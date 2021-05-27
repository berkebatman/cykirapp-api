const fetchUser = require("~root/actions/users/fetchUser");

const postLogin = async (req, res) => {
  const { email, password } = req.body;

  const { user } = await fetchUser({ email, password });

  if (user) {
    res.json({
      user
    });
  } else {
    res.status(401).send("Username or password incorrect");
  }
};

module.exports = postLogin;
