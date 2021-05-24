const express = require("express");

const getProducts = require("../controllers/products/getProducts");
const getProductsByCategory = require("../controllers/products/getProductsByCategory");
const getCategories = require("../controllers/categories/getCategories");
const getUsers = require("../controllers/users/getUsers");
const postUser = require("../controllers/users/register");
const getBlogs = require("../controllers/blogs/gelBlogs");
const postBlog = require("../controllers/blogs/postBlog");

const router = express.Router();

// products
router.get("/products", getProducts);
router.get("/category/:categoryName", getProductsByCategory);

// categories
router.get("/categories", getCategories);

// users
router.get("/users", getUsers);

// user management
router.post("/register", postUser);

// blogs
router.get("/blogs", getBlogs);
router.post("/blog/post", postBlog);

module.exports = router;
