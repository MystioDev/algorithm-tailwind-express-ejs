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


exports.searchResult = (req, res, defaultSearch, urlSetSearchData) => {
    con.connect((err) => {
        if (err) console.log(err.message);

        con.query(
            "SELECT `name`, `description`, `level`, `url` FROM `algorithms` HAVING LOWER(url) LIKE '%" + urlSetSearchData.toLowerCase() + "%' OR LOWER(name) LIKE '%" + defaultSearch.toLowerCase() + "%';",
            (error, respond) => {
                res.render("SearchPage", {
                    title: ` - "${defaultSearch}"`,
                    resp: respond,
                    searchedKeys: { rawSearched: defaultSearch, urlSearched: urlSetSearchData }
                })
            }
        );
    });
};
