const createUser = require("~root/actions/users/createUser");
const handleAPIError = require("~root/utils/handleAPIError");

const postUser = async (req, res) => {
  const {
    firstName,
    lastName,
    dateOfBirth,
    email,
    password,
    town,
    city,
    phoneNumber
  } = req.body;
  try {
    const { user } = await createUser({
      firstName,
      lastName,
      dateOfBirth,
      email,
      password,
      city,
      town,
      phoneNumber
    });

    res.status(201).send({
      user
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = postUser;
