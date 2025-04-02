const http = require('http')
const path = require('path')
const express = require('express')
const socket_io = require("socket.io");

const httpPort = 802
const app = express()

app.use(express.static(path.join(__dirname, './public')))
const httpServer = http.createServer(app)

const io = socket_io(httpServer, {
  cors: {
    origin: "http://localhost:5173",
    methods: ["GET", "POST"],
  }
})

io.socketsJoin('room_1')
io.on("connection", (socket) => {
  socket.join('public_1_room') //将用户加入房间

  console.log(`当前进入用户:${socket.rooms},在线人数:${io.of("/").sockets.size}`);

  socket.on("messages", (data) => {
    socket.emit(data)
  })
});




httpServer.listen(httpPort, () => {
  console.log(`http://127.0.0.1:${httpPort}`);
})