const express = require("express");
const app = express();
const port = 3000;
const path = require("path");

const algorithms = require("./src/algorithms");

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));

app.get("/", (req, res) => {
  res.render("HomePage", {
    title: " - Főoldal",
  });
});

app.get("/algorithms", (req, res) => {
  algorithms.algorithms(req, res);
});

app.get("/about", (req, res) => {
  res.render("AboutPage", {
    title: " - Rólunk",
  });
});


app.get("/algorithm", (req, res) => {
  res.render("AlgorithmPage", {
    title: " - Algoritm"
  });
});

app.get("/quiz", (req, res) => {
  res.render("QuizPage", {
    title: " - Tesztek, kvízek",
  });
});

app.get("*", (req, res, next) => {
  app.get("*", (request, respond, next) => {
    respond.render("404", {
      title: " - Az oldal nem található",
    });
  });
  next();
});

app.listen(port, () => {
  console.log(
    `\n\nAlgorithm ⚡️ App is running:\n\n  port: ${port}\n  url: http://localhost:${port}/\n  time: ${Date()}\n`
  );
});
