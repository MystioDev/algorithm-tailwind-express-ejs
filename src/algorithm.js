const mysql = require("mysql");

const express = require("express");
const path = require("path");

const app = express();

app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));

const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "", // admin
  database: "algorithm", // database
});

exports.algorithm = (req, res, rawUrl) => {
  con.connect((err) => {
    if (err) {
      console.log(err.message);

      res.render("ErrorPage", {
        title: " - Az algoritmus nem található",
        errorMessage: "Az algoritmus nem találhatő :(",
        errorCode: "404"
      });

      return;
    }

    con.query("SELECT `name`, `description`, `level`, `url`, `solution_id`, `python_id`, `java_id`, `c_sharp_id`, `id` FROM `algorithms`;", (error, respond) => {
      if (error) console.log(error.message);

      respond.forEach((element, item) => {
        if (rawUrl === element.url) {
          res.render("AlgorithmPage", {
            title: ` - ${element.name}`,
            data: element,
          });
        }
      });
    });
  });
};


