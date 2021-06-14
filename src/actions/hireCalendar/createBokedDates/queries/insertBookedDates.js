const { submitQuery, getInsertId } = require("~root/lib/database");

const insertBookedDate = ({ userId, productId, date }) => submitQuery`
    INSERT INTO product_hire_calendar (        
      user_id,
      product_id, 
      date_booked
    )
    VALUES 
    (${userId},${productId}, ${date})
`;

module.exports = getInsertId(insertBookedDate);
