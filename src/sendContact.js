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