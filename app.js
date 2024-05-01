const express = require("express");
const cors = require("cors");

const app = express();

app.use(cors());

app.get("/", (req, res) => {
  res.status(200).json([
    { id: "1", content: "welcome big guy" },
    { id: "2", content: "Welcome to Docker practice" },
    { id: "1", content: "Keep pushing" },
  ]);
});

app.listen(4000, () => {
  console.log("Server running on port 1000");
});
