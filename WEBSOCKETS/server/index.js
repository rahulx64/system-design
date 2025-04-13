const { createServer } = require("http");
const { Server } = require("socket.io");

const httpServer = createServer();

const io = new Server(httpServer, {
  cors: {
    origin: "http://127.0.0.1:5500", // Allow client from this origin
  },
});

io.on("connection", (socket) => {
  console.log("Client connected:", socket.id);

  // Send message to client
  socket.emit("message1", "Hello from server");
  socket.emit("message2", "Hello from bsdk");

  // Receive message from client
  socket.on("message1", (data) => {
    console.log("Received from client:", data);
  });

    socket.on("message1", (data) => {
      console.log("Received from client:", data);
    });



});

httpServer.listen(3000, () => {
  console.log("Server listening on port 3000");
});
