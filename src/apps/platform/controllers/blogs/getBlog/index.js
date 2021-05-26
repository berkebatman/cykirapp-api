const fetchBlog = require("~root/actions/blogs/fetchBlog");
const handleAPIError = require("~root/utils/handleAPIError");

const getBlog = async (req, res) => {
  const { slug } = req.params;

  try {
    const { blog } = await fetchBlog({ slug });
    res.send({
      blog
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getBlog;
