const insertUser = require("./queries/insertUser.js");

const createUser = async ({
  firstName,
  lastName,
  dateOfBirth,
  email,
  password,
  city,
  town,
  phoneNumber
}) => {
  const user = await insertUser({
    firstName,
    lastName,
    dateOfBirth,
    email,
    password,
    city,
    town,
    phoneNumber
  });

  return { user };
};

module.exports = createUser;
