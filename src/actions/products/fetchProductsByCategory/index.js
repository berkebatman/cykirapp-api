const selectProductsByCategory = require("./queries/selectProductsByCategory");

const fetchProductsByCategory = async ({ categoryName }) => {
  const productsByCategory = await selectProductsByCategory({ categoryName });

  return { productsByCategory };
};

module.exports = fetchProductsByCategory;
