const fetchBlogs = require("~root/actions/blogs/fetchBlogs");
const handleAPIError = require("~root/utils/handleAPIError");

const getBlogs = async (req, res) => {
  try {
    const { blogs } = await fetchBlogs();
    res.send({
      blogs
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getBlogs;
