const insertProduct = require("./queries/insertProduct.js");

const createProduct = async ({
  productName,
  productDescription,
  price,
  image,
  productCity,
  productTown,
  userId,
  categoryId
}) => {
  const product = await insertProduct({
    productName,
    productDescription,
    price,
    image,
    productCity,
    productTown,
    userId,
    categoryId
  });

  return { product };
};

module.exports = createProduct;
