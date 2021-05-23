const createBlog = require("~root/actions/blogs/createBlog");
const handleAPIError = require("~root/utils/handleAPIError");

const postBlog = async (req, res) => {
  const userId = 1;
  const { blogId, description, image, slug, title, blogContent } = req.body;

  try {
    const { blog } = await createBlog({
      userId,
      blogId,
      description,
      image,
      slug,
      title,
      blogContent
    });
    res.send({
      blog
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = postBlog;
