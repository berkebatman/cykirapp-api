const selectProducts = require("./queries/selectProducts");

const fetchProducts = async () => {
  const products = await selectProducts();

  return { products };
};

module.exports = fetchProducts;
