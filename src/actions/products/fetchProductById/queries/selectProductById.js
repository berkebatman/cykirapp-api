const { submitQuery, camelKeys } = require("~root/lib/database");

const selectProductById = ({ productId }) => submitQuery`

SELECT
    products.product_id,
    products.product_name,
    products.price,
    products.user_id,
    products.listed_at,
    products.image,
    products.availability,
    products.rating,
    products.product_description,
    users.first_name,
    users.last_name,
    users.town,
    users.city
FROM products
LEFT JOIN users ON products.user_id = users.user_id
WHERE product_id = ${productId}
`;

module.exports = camelKeys(selectProductById);
