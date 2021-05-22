const express = require("express");

const getProducts = require("../controllers/products/getProducts");
const getCategories = require("../controllers/categories/getCategories");

const router = express.Router();

// products
router.get("/products", getProducts);

// categories
router.get("/categories", getCategories);

module.exports = router;
