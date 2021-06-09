const insertBookedDate = require("./queries/insertBookedDates");

const createBookedDate = async ({ userId, productId, date }) => {
  const bookedDates = await insertBookedDate({
    userId,
    productId,
    date
  });

  return { bookedDates };
};

module.exports = createBookedDate;
