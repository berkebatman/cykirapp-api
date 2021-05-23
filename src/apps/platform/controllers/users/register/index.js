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
    phoneNumber,
    userId,
    userRatingId
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
      phoneNumber,
      userId,
      userRatingId
    });

    res.status(201).send({
      user
    });
  } catch (err) {
    handleAPIError(res, err);
  }
};

module.exports = postUser;
