const { submitQuery, getInsertId } = require("~root/lib/database");

const insertUser = ({
  firstName,
  lastName,
  dateOfBirth,
  email,
  password,
  city,
  town,
  phoneNumber
}) => submitQuery`
    INSERT INTO users (        
      first_name,
      last_name,
      date_of_birth,
      email,
      password,
      city,
      town,
      phone_number
    )
    VALUES 
    (${firstName},${lastName},${dateOfBirth},${email},SHA2(CONCAT(${password},${process.env.PASSWORD_SALT}), 224),${city},${town},${phoneNumber})
`;

module.exports = getInsertId(insertUser);
