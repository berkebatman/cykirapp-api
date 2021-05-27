const insertProduct = require("./queries/insertProduct.js");

const createProdcut = async ({
  productName,
  productDescription,
  price,
  image,
  productCity,
  productTown,
  userId
}) => {
  const product = await insertProduct({
    productName,
    productDescription,
    price,
    image,
    productCity,
    productTown,
    userId
  });

  return { product };
};

module.exports = createProdcut;
