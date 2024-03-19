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


exports.comments = (req, res) => {
    con.query(
        "SELECT `authorName`, `authorComment`, `authorJob`, `authorProfileImage` FROM `comments`;",
        (error, respond) => {
            if (error) {
                console.log(error);
                
                res.render("ErrorPage", {
                    title: " - Hupsz!",
                    errorMessage: "Nem lehet felvenni a kapcsolatot az adatbázissal :(",
                    errorCode: "500"
                });
            }
            
            res.render("AboutPage", {
                title: " - Rólunk",
                data: respond,
            });
        }
    );
};
