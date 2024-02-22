require("dotenv").config()

const express = require("express");
const app = express();
const port = process.env.HOST_PORT || 3000;
const host = process.env.HOST_URL || "localhost";
const path = require("path");

const algorithms = require("./src/algorithms");
const algorithm = require("./src/algorithm");
const searchResult = require("./src/searchResult");
const sendContact = require("./src/sendContact");

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

app.get("/sendContact", (req, res) => {
  sendContact.sendContact(
    res,
    req.query.emailInput,
    req.query.subjectInput,
    req.query.descInput
  )
})

app.get("/contact", (req, res) => {
  let status = req.query.status;

  switch (status) {
    case "success":
      res.render("FeedBackRespond", {
        isFailed: false
      });

      break;
  
    case "failed":
      res.render("FeedBackRespond", {
        isFailed: true
      });

      break;
  }
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

app.listen(port, host, (err) => {
  if (err) console.log(err);

  console.log(
    `\n\nAlgorithm ⚡️ App is running:\n\n  port: ${port}\n  url: http://${host}:${port}/\n  time: ${Date()}\n`
  );
});
