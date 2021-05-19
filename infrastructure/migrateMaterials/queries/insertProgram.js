const { submitQuery, getInsertId } = require("../../../src/lib/database");

const insertProgram = ({ name }) => submitQuery`
	# debug
    INSERT INTO programs(program_name, duration_hours, duration_weeks, price, currency)
    VALUES(${name}, "n/a", "n/a", 0, "n/a");
`;

module.exports = getInsertId(insertProgram);
