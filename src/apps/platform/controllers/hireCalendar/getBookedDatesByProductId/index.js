const fetchBookedDatesByProductId = require("~root/actions/hireCalendar/fetchBookedDatesByProductId");
const handleAPIError = require("~root/utils/handleAPIError");

const getBookedDatesByProductId = async (req, res) => {
  const { productId } = req.body;

  try {
    const { bookedDatesByProductId } = await fetchBookedDatesByProductId({
      productId
    });
    res.send({
      bookedDatesByProductId
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getBookedDatesByProductId;
