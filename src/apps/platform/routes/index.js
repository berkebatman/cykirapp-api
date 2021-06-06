const express = require("express");
const multer = require("multer");
const path = require("path");
const getProducts = require("../controllers/products/getProducts");
const getProductsByCategory = require("../controllers/products/getProductsByCategory");
const getProductById = require("../controllers/products/getProductById");
const getCategories = require("../controllers/categories/getCategories");
const getUsers = require("../controllers/users/getUsers");
const postUser = require("../controllers/users/register");
const getBlogs = require("../controllers/blogs/getBlogs");
const getBlog = require("../controllers/blogs/getBlog");
const postLogin = require("../controllers/users/login");
const authentication = require("../../middlewares/authentication");
const postProduct = require("../controllers/products/postProduct");
const getProductByUserId = require("../controllers/products/getProductByUserId");

const router = express.Router();

const storage = multer.diskStorage({
  destination(req, _file, cb) {
    cb(null, "uploads/");
  },
  filename(req, file, cb) {
    cb(null, Date.now() + path.extname(file.originalname)); // Appending extension
  }
});

const upload = multer({ storage });

// products
router.get("/products", getProducts);
router.get("/category/:categoryName", getProductsByCategory);
router.get("/product/:productId", getProductById);
router.post("/products/list-an-item", upload.single("image"), postProduct);
router.get("/productbyuser/:userId", getProductByUserId);

// categories
router.get("/categories", getCategories);

// users
router.get("/users", getUsers);

// user management
router.post("/register", postUser);
router.post("/login", postLogin);

// blogs
router.get("/blogs", getBlogs);
router.get("/blog/:slug", getBlog);

module.exports = router;
