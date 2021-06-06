const fetchProductByUserId = require("~root/actions/products/fetchProductByUserId");
const handleAPIError = require("~root/utils/handleAPIError");

const getProductByUserId = async (req, res) => {
  const { userId } = req.params;

  try {
    const { productByUserId } = await fetchProductByUserId({
      userId
    });
    res.send({
      productByUserId
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getProductByUserId;
