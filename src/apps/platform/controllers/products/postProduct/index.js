const createProduct = require("~root/actions/products/createProduct");
const handleAPIError = require("~root/utils/handleAPIError");

const postProduct = async (req, res) => {
  const {
    productName,
    productDescription,
    price,
    image,
    productCity,
    productTown,
    userId,
    categoryId
  } = req.body;

  try {
    const { product } = await createProduct({
      productName,
      productDescription,
      price,
      image,
      productCity,
      productTown,
      userId,
      categoryId
    });
    res.send({
      product
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = postProduct;
