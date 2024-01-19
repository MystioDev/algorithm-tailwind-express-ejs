const express = require("express");
const app = express();
const port = 3000;
const path = require("path");

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));

app.get("/", (req, res) => {
  res.render("HomePage", {
    title: "Hello World!",
    url: req.protocol + "://" + req.headers.host,
  });
});

app.listen(port, () => {
  console.log(
    `\n\nApp is running on port ${port}:\n  url: http://localhost:${port}\n`
  );
});
