const insertBlog = require("./queries/insertBlog");

const createBlog = async ({
  userId,
  blogId,
  description,
  image,
  slug,
  title,
  blogContent
}) => {
  const blog = await insertBlog({
    userId,
    blogId,
    description,
    image,
    slug,
    title,
    blogContent
  });

  return { blog };
};

module.exports = createBlog;
