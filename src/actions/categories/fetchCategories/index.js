const selectCategories = require("./queries/selectCategories");

const fetchCategories = async () => {
  const categories = await selectCategories();

  return { categories };
};

module.exports = fetchCategories;
