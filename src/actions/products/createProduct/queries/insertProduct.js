const { submitQuery, getInsertId } = require("~root/lib/database");

const insertProduct = ({
  productName,
  productDescription,
  price,
  image,
  productCity,
  productTown,
  userId
}) => submitQuery`
    INSERT INTO products (        
      product_name,
      product_description,
      price,
      image, 
      product_city,
      product_town,
      user_id
    )
    VALUES 
    (${productName},${productDescription},${price},${image},${productCity},${productTown}, ${userId})
`;

module.exports = getInsertId(insertProduct);
