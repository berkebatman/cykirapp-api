const { submitQuery, getInsertId } = require("~root/lib/database");

const insertOrder = ({ userId, productId }) => submitQuery`
    INSERT INTO orders (        
      user_id,
      product_id
    )
    VALUES 
    (${userId},${productId})
`;

module.exports = getInsertId(insertOrder);
