require("dotenv").config()

const mysql = require("mysql");
const express = require("express");
const path = require("path");

const app = express();

app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));

const con = mysql.createConnection({
  host: process.env.DATABASE_HOST,
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PW,
  database: process.env.DATABASE_DATABASE_NAME,
  multipleStatements: false
});

exports.algorithms = (req, res) => {
  con.query(
    "SELECT `name`, `description`, `level`, `url`, `solution_id`, `python_id`, `java_id`, `c_sharp_id`, `id` FROM `algorithms`;",
    (error, respond) => {
      if (error) {
        console.log(error);
        
        res.render("ErrorPage", {
          title: " - Hupsz!",
          errorMessage: "Nem lehet felvenni a kapcsolatot az adatbázissal :(",
          errorCode: "500"
        });
      }
      
      res.render("AlgorithmsPage", {
        title: " - Algoritmusok",
        data: respond,
      });
    }
  );
};