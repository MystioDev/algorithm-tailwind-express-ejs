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
    multipleStatements: false
});

exports.sendContact = (res, email, subject, text) => {
    let preSql = "INSERT INTO `contact`(`email`, `subject`, `text`) VALUES (?, ?, ?);";

    con.query(preSql, [email, subject, text], (error, respond) => {
        if (error) {
            console.log(error);

            res.redirect("/contact/?status=failed")
        }

        res.redirect("/contact/?status=success")

    })
}