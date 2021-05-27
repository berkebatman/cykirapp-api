const selectProductById = require("./queries/selectProductById");

const fetchProductById = async ({ productId }) => {
  const productById = await selectProductById({ productId });

  return { productById };
};

module.exports = fetchProductById;
