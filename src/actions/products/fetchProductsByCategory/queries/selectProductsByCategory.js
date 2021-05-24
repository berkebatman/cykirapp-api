const { submitQuery, camelKeys } = require("~root/lib/database");

const selectProductsByCategory = ({ categoryName }) => submitQuery`

SELECT
    product_categories.category_id,
    product_categories.category_name,
    products.product_id,
    products.product_name,
    products.price,
    products.user_id,
    products.listed_at,
    users.first_name,
    users.last_name
FROM product_categories
LEFT JOIN products ON product_categories.category_id = products.category_id
LEFT JOIN users ON products.user_id = users.user_id
WHERE category_name = ${categoryName}
`;

module.exports = camelKeys(selectProductsByCategory);