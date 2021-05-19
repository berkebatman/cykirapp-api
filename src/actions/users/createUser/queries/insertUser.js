const { submitQuery, getInsertId } = require("~root/lib/database");

const insertUser = ({
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
}) => submitQuery`
    INSERT INTO users (        
      first_name,
      last_name,
      date_of_birth,
      email,
      password,
      address,
      address_line_1,
      address_line_2,
      postcode,
      city,
      town,
      state,
      country,
      phone_number,
      emergency_contact_name,
      contact_number,
      user_type_id
    )
    VALUES 
    (${firstName},${lastName},${dateOfBirth},${email},SHA2(CONCAT(${password},${process.env.PASSWORD_SALT}), 224),${address},${addressLine1},${addressLine2},${postcode},${city},${town},${state},
        ${country},${phoneNumber},${emergencyContactName},${contactNumber}, 3)
       
`;

module.exports = getInsertId(insertUser);
