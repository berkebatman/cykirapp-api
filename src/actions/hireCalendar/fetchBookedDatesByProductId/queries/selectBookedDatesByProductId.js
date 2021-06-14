const { submitQuery, camelKeys } = require("~root/lib/database");

const selectBookedDatesByProductId = ({ productId }) => submitQuery`

SELECT
    user_id,
    product_id, 
    date_booked
FROM product_hire_calendar
WHERE product_id = ${productId}
`;

module.exports = camelKeys(selectBookedDatesByProductId);
