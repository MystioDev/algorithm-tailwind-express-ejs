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


exports.searchResult = (req, res, defaultSearch, urlSetSearchData) => {
    let preSql = "SELECT `name`, `description`, `level`, `url`, `active` FROM `algorithms` HAVING LOWER(url) LIKE ? OR LOWER(name) LIKE ?;";

    con.query(preSql, [`%${urlSetSearchData.toLowerCase()}%`, `%${defaultSearch.toLowerCase()}%`], (error, respond) => {
            if (error) {
                console.log(error);

                res.render("ErrorPage", {
                    title: " - Hupsz!",
                    errorMessage: "Nem lehet felvenni a kapcsolatot az adatbázissal :(",
                    errorCode: "500"
                });
            }
            
            res.render("SearchPage", {
                title: ` - "${defaultSearch}"`,
                resp: respond,
                searchedKeys: { rawSearched: defaultSearch, urlSearched: urlSetSearchData }
            })
        }
    );
};
