const socket = io("http://localhost:3000");

socket.on("connect", () => {
  console.log("Connected to server:", socket.id);
});

socket.on("message1", (data) => {
  console.log("Message from server:", data);
});

// Respond to server
socket.emit("message1", "Hgggggello from client");

socket.on("message2", (data) => {
  console.log("Message from server:", data);
});
