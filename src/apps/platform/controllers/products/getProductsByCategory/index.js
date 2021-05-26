
const fetchProductsByCategory = require("~root/actions/products/fetchProductsByCategory");
const handleAPIError = require("~root/utils/handleAPIError");

const getProductsByCategory = async (req, res) => {
  const { categoryName } = req.params;
  const decoded = decodeURIComponent(categoryName);

  try {
    const { productsByCategory } = await fetchProductsByCategory({
      categoryName: decoded
    });
    res.send({
      productsByCategory
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getProductsByCategory;
