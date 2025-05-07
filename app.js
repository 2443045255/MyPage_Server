const util = require('util');
const http = require('http')
const path = require('path')
const express = require('express')
const cors = require('cors');
const socket_io = require("socket.io");
const mysql = require("mysql")

const httpPort = 802
const app = express()

app.use(cors({
  origin: 'http://localhost:5173'
}));

const db = mysql.createPool({
  host: '127.0.0.1',
  user: "root",
  password: "",
  database: "rxaser_page"
})

function db_func(_sql, _stu) {
  return new Promise((resolve) => {
    let sql = _sql
    // 对象里面的属性必须与数据表的字段名一致
    let stu = _stu
    db.query(sql, stu, (err, results) => {
      if (err) {
        return console.log("数据库错误:" + err.message)
      }
      resolve(results)
      // if (results.affectedRows) {
      //   console.log("执行成功");
      // }
      // console.log(results);
    })
  })
}


app.use(express.static(path.join(__dirname, './public')))
const httpServer = http.createServer(app)

const io = socket_io(httpServer, {
  cors: {
    origin: "http://localhost:5173",
    methods: ["GET", "POST"],
  }
})

// 读取聊天记录保存到后端
// 查询现有房间，查询房间聊天记录
var UserMsgHistory = {}
var Rooms = []
function getUserMsgHistory() {
  db_func(`select * from rooms`)
    .then((results) => {
      results.forEach(item => {
        UserMsgHistory[item.RoomName] = []
        Rooms.push(item.RoomName)
      });
      for (let i = 0; i <= Rooms.length - 1; i++) {
        db_func(`select * from ${Rooms[i]}`)
          .then((results) => {
            for (let j = 0; j <= results.length - 1; j++) {
              var item = {}
              item.userID = results[j].userID
              item.userName = results[j].userName
              item.userMsg_Time = JSON.parse(results[j].userMsg_Time)
              UserMsgHistory[Rooms[i]].push(item)
            }
            console.log(UserMsgHistory);

          })
      }
    })
}
getUserMsgHistory()


io.socketsJoin('room_1')
io.on("connection", (socket) => {
  socket.join('room_1') //将用户加入房间
  // console.log(socket.rooms);

  console.log(`当前进入用户:${socket.id},房间:${util.inspect(socket.rooms, { depth: null })},在线人数:${io.of("/").sockets.size}`);

  socket.on("连接", (data) => {
    // socket.emit(data)
    console.log(data);
  })
  socket.on("msg", (data) => {
    if (!data.userMsg_Time[0]) {
      return
    }
    db_func(`insert into room_1 set ?`, data)
    getUserMsgHistory()
    socket.emit("msg", data)
    socket.to("room_1").emit("msg", data)
    // console.log(data);
  })
  socket.on("disconnect", () => {
    console.log(`当前离开用户:${socket.id},房间:${util.inspect(socket.rooms, { depth: null })},在线人数:${io.of("/").sockets.size}`);
  })
});


// 获取历史聊天记录
app.get("/api/UserMsgHistory", (req, res) => {
  let room = req.query.RoomName
  let len = req.query.Len
  // 获取聊天记录条目大于当前记录 处理
  let arrLen = UserMsgHistory[room].length
  console.log(arrLen);

  if (len >= arrLen) {
    len = arrLen
  }
  let data = []
  // 处理同一个ID的消息
  for (let i = 1; i <= len; i++) {
    data.unshift(UserMsgHistory[room][arrLen - i])
    if (i == len) {
      if (UserMsgHistory[room][arrLen - i - 1]) {
        if (data[0].userID == UserMsgHistory[room][arrLen - i - 1].userID) {
          len++
        }
      }

    }

  }
  // console.log("============================data")
  // console.log(data)
  // 转为堆叠记录
  let userMsg_TimeArr = []
  let data1 = []
  for (let j = 0; j <= data.length - 1; j++) {
    userMsg_TimeArr.push(data[j].userMsg_Time)
    if (j == data.length - 1 || data[j].userID != data[j + 1].userID) {
      data1.push({ ...data[j] })
      data1[data1.length - 1].userMsg_Time = userMsg_TimeArr
      userMsg_TimeArr = []
    }
  }
  res.send(data1)
})

// 插入数据
// for (let i = 1; i <= 6; i++) {
//   db_func(`insert into room_1 set ?`, {
//     userID: "666",
//     userName: "666",
//     userMsg_Time: `["666_${i}", [2024, 10, 2, 8, ${i}]]`
//   })
// }



httpServer.listen(httpPort, () => {
  console.log(`http://127.0.0.1:${httpPort}`);
})