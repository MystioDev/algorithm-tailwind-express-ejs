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

exports.algorithm = (req, res, rawUrl) => {
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
};