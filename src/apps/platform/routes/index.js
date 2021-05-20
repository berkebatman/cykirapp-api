const express = require("express");

const getProducts = require("../controllers/products/getProducts");

const router = express.Router();

// products
router.get("/products", getProducts);

module.exports = router;
