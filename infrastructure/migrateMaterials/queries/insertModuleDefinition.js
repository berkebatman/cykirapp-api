const { submitQuery, getInsertId } = require("../../../src/lib/database");

const insertModuleDefinition = ({
  programId,
  title,
  description,
  image
}) => submitQuery`
    INSERT INTO module_definitions (program_id, title, description, image, price, currency)
    VALUES (${programId}, ${title}, ${description}, ${image}, 0, "n/a");
`;

module.exports = getInsertId(insertModuleDefinition);
