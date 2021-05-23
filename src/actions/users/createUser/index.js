const insertUser = require("./queries/insertUser.js");

const createUser = async ({
  firstName,
  lastName,
  dateOfBirth,
  email,
  password,
  city,
  town,
  phoneNumber,
  userRatingId
}) => {
  const user = await insertUser({
    firstName,
    lastName,
    dateOfBirth,
    email,
    password,
    city,
    town,
    phoneNumber,
    userRatingId
  });

  return { user };
};

module.exports = createUser;
