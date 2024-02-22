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
  con.query("SELECT algorithms.name, `description`, `level`, `url`, solutions.visual, language_python.code AS 'py', language_java.code AS 'java', language_c_sharp.code AS 'cs' FROM `algorithms` INNER JOIN language_python ON language_python.id = algorithms.python_id INNER JOIN language_java ON language_java.id = algorithms.java_id INNER JOIN language_c_sharp ON language_c_sharp.id = algorithms.c_sharp_id INNER JOIN solutions ON solutions.id = algorithms.solution_id;", (error, respond) => {
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