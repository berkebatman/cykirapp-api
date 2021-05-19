/* eslint-disable func-names */
/* eslint-disable prefer-destructuring */
require("module-alias/register");
const path = require("path");
const _ = require("lodash");
require("dotenv").config({
  path: path.join(__dirname, "../../.env")
});

const data = require("./content.json");
const asyncSeries = require("../../src/utils/asyncSeries");
const insertProgram = require("./queries/insertProgram");
const insertModuleDefinition = require("./queries/insertModuleDefinition");
const insertChapter = require("./queries/insertChapter");
const insertPage = require("./queries/insertPage");

const orderPages = inputData => {
  const pagesWithOrder = inputData.map(p => {
    return {
      ...p,
      chapterOrder: p.chapters.findIndex(chapterId => {
        return chapterId === p.id;
      }),
      pageOrder: p.pages.findIndex(pageArrayElement => {
        // eslint-disable-next-line no-underscore-dangle
        return pageArrayElement.name === p.__key___3.name;
      })
    };
  });

  // order pages
  const sorted = _.sortBy(pagesWithOrder, [
    function(o) {
      return Number(o.pageOrder);
    }
  ]);
  // order chapters
  const sorted2 = _.sortBy(sorted, [
    function(o) {
      return Number(o.order_1);
    }
  ]);
  // order modules
  const sorted3 = _.sortBy(sorted2, [
    function(o) {
      return Number(o.order);
    }
  ]);
  return sorted3;
};

const migrateMaterials = async () => {
  const allPages = orderPages(
    data.filter(p => p.name !== "Software Engineer FlexiTrack")
  );
  const allPrograms = _.uniq(allPages.map(p => p.name));
  const programs = {};
  await asyncSeries(allPrograms, async program => {
    const programId = await insertProgram({ name: program });
    programs[program] = programId;
  });

  const allModules = _.groupBy(allPages, "name_1");
  const modules = {};
  await asyncSeries(Object.keys(allModules), async myModule => {
    const programName = allModules[myModule][0].name;
    const programId = programs[programName];
    const title = allModules[myModule][0].name_1;
    const image = allModules[myModule][0].icon;
    const moduleDefinitionId = await insertModuleDefinition({
      programId,
      title,
      image,
      description: "n/a"
    });
    modules[myModule] = moduleDefinitionId;
  });

  const allChapters = _.groupBy(allPages, "name_2");
  const chapters = {};
  await asyncSeries(Object.keys(allChapters), async myChapter => {
    const moduleName = allChapters[myChapter][0].name_1;
    const moduleDefinitionId = modules[moduleName];
    const title = allChapters[myChapter][0].name_2;
    const sortIndex = allChapters[myChapter][0].chapterOrder;
    const chapterId = await insertChapter({
      moduleDefinitionId,
      title,
      sortIndex
    });
    chapters[myChapter] = chapterId;
  });

  await asyncSeries(allPages, async page => {
    const chapterId = chapters[page.name_2];
    const title = page.title;
    const content = page.content;
    const sortIndex = page.pageOrder;
    await insertPage({
      chapterId,
      title,
      content,
      sortIndex
    });
  });
};

migrateMaterials();
