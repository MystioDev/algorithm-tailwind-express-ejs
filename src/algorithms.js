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

exports.algorithms = (req, res) => {
  con.connect((err) => {
    if (err) {
      console.log(err.message);

      res.render("ErrorPage", {
        title: " - Hupsz!",
        errorMessage: "Nem lehet felvenni a kapcsolatot az adatbázissal :(",
        errorCode: "500"
      });

      return;
    }

    con.query(
      "SELECT `name`, `description`, `level`, `url`, `solution_id`, `python_id`, `java_id`, `c_sharp_id`, `id` FROM `algorithms`;",
      (error, respond) => {
        res.render("AlgorithmsPage", {
          title: " - Algoritmusok",
          data: respond,
        });
      }
    );
  });
};
