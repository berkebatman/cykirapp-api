const createBookedDate = require("~root/actions/hireCalendar/createBokedDates");
const handleAPIError = require("~root/utils/handleAPIError");

const postBookedDates = async (req, res) => {
  const { userId, productId, date } = req.body;

  try {
    const { bookedDates } = await createBookedDate({
      userId,
      productId,
      date
    });
    res.send({ bookedDates });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = postBookedDates;
