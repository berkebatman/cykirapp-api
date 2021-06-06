const selectProductByUserId = require("./queries/selectProductByUserId");

const fetchProductByUserId = async ({ userId }) => {
  const productByUserId = await selectProductByUserId({ userId });

  return { productByUserId };
};

module.exports = fetchProductByUserId;
