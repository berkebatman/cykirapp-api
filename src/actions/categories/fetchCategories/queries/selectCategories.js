const { submitQuery, camelKeys } = require("~root/lib/database");

const selectCategories = () => submitQuery`
SELECT 
  *
FROM product_categories
`;

module.exports = camelKeys(selectCategories);
