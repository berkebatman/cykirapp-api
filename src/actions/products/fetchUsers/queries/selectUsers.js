const { submitQuery, camelKeys, getFirst } = require("~root/lib/database");

const selectUsers = () => submitQuery`
    SELECT 
    
      *

    FROM users 

`;

module.exports = getFirst(camelKeys(selectUsers));
