const createProdcut = require("~root/actions/products/createProduct");
const handleAPIError = require("~root/utils/handleAPIError");

const postProduct = async (req, res) => {
  const {
    productName,
    productDescription,
    price,
    image,
    productCity,
    productTown,
    userId
  } = req.body;

  try {
    const { product } = await createProdcut({
      productName,
      productDescription,
      price,
      image,
      productCity,
      productTown,
      userId
    });
    res.send({
      product
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = postProduct;
