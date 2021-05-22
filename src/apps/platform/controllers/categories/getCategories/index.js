const fetchCategories = require("~root/actions/products/fetchCategories");
const handleAPIError = require("~root/utils/handleAPIError");

const getCategories = async (req, res) => {
  try {
    const { categories } = await fetchCategories();
    res.send({
      categories
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getCategories;
