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

  console.log(req.file, "<<< file");
  console.log(req.body);

  try {
    const { product } = await createProduct({
      productName,
      productDescription,
      price,
      image: req.file.path,
      productCity,
      productTown,
      userId,
      categoryId
    });
    res.send({});
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = postProduct;
