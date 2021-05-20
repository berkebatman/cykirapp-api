const fetchProducts = require("~root/actions/products/fetchProducts");
const handleAPIError = require("~root/utils/handleAPIError");

const getProducts = async (req, res) => {
  try {
    const { products } = await fetchProducts();
    res.send({
      products
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getProducts;
