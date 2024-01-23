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
    if (err) console.log(err.message);

    con.query(
      "SELECT `name`, `description`, `level`, `solution_id`, `python_id`, `java_id`, `c_sharp_id`, `id` FROM `algorithms`;",
      (error, respond, fields) => {
        console.log(fields);

        res.render("AlgorithmPage", {
          title: " - Algoritmusok",
          data: respond,
        });
      }
    );
  });
};
