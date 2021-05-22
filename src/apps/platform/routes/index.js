const express = require("express");

const getProducts = require("../controllers/products/getProducts");
const getCategories = require("../controllers/categories/getCategories");
const getUsers = require("../controllers/users/getUsers");

const router = express.Router();

// products
router.get("/products", getProducts);

// categories
router.get("/categories", getCategories);

// users
router.get("/users", getUsers);

module.exports = router;
