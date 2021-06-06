const insertOrder = require("./queries/insertOrder.js");

const createOrder = async ({ userId, productId }) => {
  const order = await insertOrder({
    userId,
    productId
  });

  return { order };
};

module.exports = createOrder;
