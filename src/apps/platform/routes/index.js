const express = require("express");

const getProducts = require("../controllers/products/getProducts");
const getProductsByCategory = require("../controllers/products/getProductsByCategory");
const getProductById = require("../controllers/products/getProductById");
const getCategories = require("../controllers/categories/getCategories");
const getUsers = require("../controllers/users/getUsers");
const postUser = require("../controllers/users/register");
const getBlogs = require("../controllers/blogs/gelBlogs");
const postBlog = require("../controllers/blogs/postProduct");
const getBlog = require("../controllers/blogs/getBlog");
const postLogin = require("../controllers/users/login");
const authentication = require("../../middlewares/authentication");
const postProduct = require("../controllers/blogs/postProduct");

const router = express.Router();

// products
router.get("/products", getProducts);
router.get("/category/:categoryName", getProductsByCategory);
router.get("/product/:productId", getProductById);
router.post("/products/list-an-item", authentication, postProduct);
// categories
router.get("/categories", getCategories);

// users
router.get("/users", getUsers);

// user management
router.post("/register", postUser);
router.post("/login", postLogin);

// blogs
router.get("/blogs", getBlogs);
router.post("/blog/post", postBlog);
router.get("/blog/:slug", getBlog);

module.exports = router;
