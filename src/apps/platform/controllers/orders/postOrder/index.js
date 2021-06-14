const createOrder = require("~root/actions/orders/createOrder");
const handleAPIError = require("~root/utils/handleAPIError");

const postOrder = async (req, res) => {
  const { userId, productId } = req.body;

  try {
    const { order } = await createOrder({
      userId,
      productId
    });
    res.send({ order });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = postOrder;
