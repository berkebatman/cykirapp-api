const selectOrdersByUserId = require("./queries/selectOrdersByUserId");

const fetchOrdersByUserId = async ({ userId }) => {
  const ordersByUserId = await selectOrdersByUserId({ userId });

  return { ordersByUserId };
};

module.exports = fetchOrdersByUserId;
