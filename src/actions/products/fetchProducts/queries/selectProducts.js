const { submitQuery, camelKeys } = require("~root/lib/database");

const selectProducts = () => submitQuery`
SELECT 
  *
FROM products 
`;

module.exports = camelKeys(selectProducts);
