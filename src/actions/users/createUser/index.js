const insertUser = require("./queries/insertUser");

const createUser = async ({
  firstName,
  lastName,
  dateOfBirth,
  email,
  password,
  address,
  addressLine1,
  addressLine2,
  postcode,
  city,
  town,
  state,
  country,
  phoneNumber,
  emergencyContactName,
  contactNumber
}) => {
  const user = await insertUser({
    firstName,
    lastName,
    dateOfBirth,
    email,
    password,
    address,
    addressLine1,
    addressLine2,
    postcode,
    city,
    town,
    state,
    country,
    phoneNumber,
    emergencyContactName,
    contactNumber
  });

  return { user };
};

module.exports = createUser;
