const { submitQuery, camelKeys, getFirst } = require("~root/lib/database");

const selectUser = ({ email, password }) => submitQuery`
SELECT 
user_id,
first_name,
last_name,
date_of_birth,
email,
city,
town,
phone_number
    FROM users
    WHERE email = ${email}
    AND password = ${password};
`;

module.exports = getFirst(camelKeys(selectUser));
