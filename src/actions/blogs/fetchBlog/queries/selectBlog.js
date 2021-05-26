const { submitQuery, camelKeys } = require("~root/lib/database");

const selectBlog = ({ slug }) => submitQuery`
    SELECT 
    
      blog_id, 
      description, 
      image, 
      slug, 
      title, 
      blog_content, 
      published_at, 
      first_name, 
      last_name

    FROM blogs 

    LEFT JOIN users ON blogs.user_id = users.user_id
    WHERE slug = ${slug}
`;

module.exports = camelKeys(selectBlog);
