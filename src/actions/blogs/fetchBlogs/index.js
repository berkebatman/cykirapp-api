const selectBlogs = require("./queries/selectBlogs");

const fetchBlogs = async () => {
  const blogs = await selectBlogs();

  return { blogs };
};

module.exports = fetchBlogs;
