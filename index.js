const express = require("express");
const path = require("path");
const wonders = require("./wonders.json");

const app = express();

app.use(express.static(path.join(__dirname, "../public")));

app.get("/api/wonders", (req, res) => {
  res.json(wonders);
});

app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "../public/index.html"));
});

const PORT = 80;

app.listen(PORT, () => {
  console.log(`Seven Wonders app running on port ${PORT}`);
});
