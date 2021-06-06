const fetchOrdersByUserId = require("~root/actions/orders/fetchOrdersByUserId");
const handleAPIError = require("~root/utils/handleAPIError");

const getOrdersByUserId = async (req, res) => {
  const { userId } = req.body;

  try {
    const { ordersByUserId } = await fetchOrdersByUserId({
      userId
    });
    res.send({
      ordersByUserId
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getOrdersByUserId;
