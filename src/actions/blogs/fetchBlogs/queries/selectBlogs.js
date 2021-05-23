const { submitQuery, camelKeys } = require("~root/lib/database");

const selectBlogs = () => submitQuery`
SELECT 
  *
FROM blogs
`;

module.exports = camelKeys(selectBlogs);
