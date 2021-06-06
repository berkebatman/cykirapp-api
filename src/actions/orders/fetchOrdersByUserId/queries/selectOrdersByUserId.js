const { submitQuery, camelKeys } = require("~root/lib/database");

const selectOrdersByUserId = ({ userId }) => submitQuery`

SELECT
    orders.order_id,
    orders.user_id,
    orders.product_id,
    products.product_id,
    products.product_name,
    products.price,
    products.user_id,
    products.listed_at,
    products.image,
    products.availability,
    products.rating,
    products.product_description
FROM orders
LEFT JOIN products ON orders.product_id = products.product_id
WHERE orders.user_id = ${userId}
`;

module.exports = camelKeys(selectOrdersByUserId);
