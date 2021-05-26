const selectBlog = require("./queries/selectBlog");

const fetchBlog = async ({ slug }) => {
  const blog = await selectBlog({ slug });

  return { blog };
};

module.exports = fetchBlog;
