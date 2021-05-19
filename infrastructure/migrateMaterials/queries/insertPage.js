const { submitQuery, getInsertId } = require("../../../src/lib/database");

const insertPage = ({ chapterId, title, content, sortIndex }) => submitQuery`
    INSERT INTO pages(chapter_id, title, page_content, sortIndex) 
    VALUES(${chapterId}, ${title}, ${content}, ${sortIndex});
`;

module.exports = getInsertId(insertPage);
