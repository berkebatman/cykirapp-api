const selectBookedDatesByProductId = require("./queries/selectBookedDatesByProductId");

const fetchBookedDatesByProductId = async ({ productId }) => {
  const bookedDates = await selectBookedDatesByProductId({ productId });

  return { bookedDates };
};

module.exports = fetchBookedDatesByProductId;
