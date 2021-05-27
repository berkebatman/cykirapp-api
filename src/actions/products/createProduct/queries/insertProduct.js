const { submitQuery, getInsertId } = require("~root/lib/database");

const insertUser = ({
  productName,
  price,
  image,
  listedAt,
  rating,
  availability,
  productCity,
  productTown,
  userId
}) => submitQuery`
    INSERT INTO products (        
      product_name,
      price,
      image,
      listedAt,
      rating,
      availability,
      product_city,
      product_town,
      user_id,
    )
    VALUES 
    (${productName},${price},${image},${listedAt}, ${rating},${availability},${productCity}, ${productTown}, NULL)
`;

module.exports = getInsertId(insertUser);
