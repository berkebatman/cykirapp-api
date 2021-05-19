const { submitQuery, getInsertId } = require("../../../src/lib/database");

const insertChapter = ({ moduleDefinitionId, title, sortIndex }) => submitQuery`
    # debug
    INSERT INTO chapters(module_definition_id, title, sortIndex)
    VALUES(${moduleDefinitionId}, ${title}, ${sortIndex});
`;

module.exports = getInsertId(insertChapter);
