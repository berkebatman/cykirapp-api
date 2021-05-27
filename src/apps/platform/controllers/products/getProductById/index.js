const fetchProductById = require("~root/actions/products/fetchProductById");
const handleAPIError = require("~root/utils/handleAPIError");

const getProductById = async (req, res) => {
  const { productId } = req.params;

  try {
    const { productById } = await fetchProductById({
      productId
    });
    res.send({
      productById
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getProductById;
