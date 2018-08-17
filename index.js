'use strict';
const express = require('express');
const app = express();
const router = express.Router();
const bodyParser = require('body-parser');


app.get("/version", (req, res, next) => {
 var ver = "v1.0";
 res.send(ver);
});

app.listen(3000, () => {
 console.log("Server running on port 3000");
});
