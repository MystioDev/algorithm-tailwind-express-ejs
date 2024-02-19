const express = require("express");
const app = express();
const port = 3000;
const path = require("path");

const algorithms = require("./src/algorithms");
const algorithm = require("./src/algorithm");
const searchResult = require("./src/searchResult");

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));

/* Elsődleges oldal betöltése */

app.get("/", (req, res) => {
  res.render("HomePage", {
    title: " - Főoldal",
  });
});

/* Algoritmusok betöltése */

app.get("/algoritmusok", (req, res) => {
  algorithms.algorithms(req, res);
});

/* Algoritmus betöltése */

app.get("/algoritmusok/*", (req, res) => {
  let rawUrl = req.url.replace("/algoritmusok/", "")

  algorithm.algorithm(req, res, rawUrl);
})

/* Rólunk oldal beöltése */

app.get("/rolunk", (req, res) => {
  res.render("AboutPage", {
    title: " - Rólunk",
  });
});

/* Szintfelmérő oldal betöltése */

app.get("/teszt", (req, res) => {
  res.render("QuizPage", {
    title: " - Tesztek, kvízek",
  });
});

/* Keresőmező működése */

app.get("/search", (req, res) => {
  let rawSearchData = req.query.searchBar;
  let searchData = rawSearchData.toLowerCase().replace(/\s/g, "-")

  searchResult.searchResult(
    req,
    res,
    rawSearchData,
    searchData
  )

})

/* "404" oldal nem található oldal betöltése */

app.get("*", (req, res, next) => {
  app.get("*", (request, respond, next) => {
    respond.render("ErrorPage", {
      title: " - Az oldal nem található",
      errorMessage: "Az oldal nem találhatő :(",
      errorCode: "404"
    });
  });
  next();
});

/* App futtatása */

app.listen(port, () => {
  console.log(
    `\n\nAlgorithm ⚡️ App is running:\n\n  port: ${port}\n  url: http://localhost:${port}/\n  time: ${Date()}\n`
  );
});
