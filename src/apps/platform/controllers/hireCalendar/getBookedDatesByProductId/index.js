const fetchBookedDatesByProductId = require("~root/actions/hireCalendar/fetchBookedDatesByProductId");
const handleAPIError = require("~root/utils/handleAPIError");

const getBookedDatesByProductId = async (req, res) => {
  const { productId } = req.params;

  try {
    const { bookedDates } = await fetchBookedDatesByProductId({
      productId
    });
    res.send({
      bookedDates
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = getBookedDatesByProductId;
