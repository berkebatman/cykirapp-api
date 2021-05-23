const { submitQuery } = require("~root/lib/database");

const createBlog = ({
  userId,
  blogId,
  description,
  image,
  slug,
  title,
  blogContent
}) => submitQuery`
    INSERT INTO blogs (
        user_id, 
        blog_id,
        \`description\`,
        \`image\`,
        slug,
        title,
        blog_content
      
    )
    VALUES(${userId},${blogId},${description},${image},${slug},${title},${blogContent})
`;

module.exports = createBlog;
