#!/usr/bin/env node
const fs = require("fs");
const base = 'https://github.com/WeCanCodeIT/CleanCode/blob/main/lessons.md'

fs.readFile("lessons.md", "utf8", (err, data) => {
  if (err) {
    console.error(err);
    return;
  }

  process.stdout.write("<html><body>THIS IS A GENERATED FILE. DO NOT MANUALLY EDIT.\n");

  const header = /^(#+)\s+(W\d+D\d+)\s*-+\s*(.*)/;
  const anchor = /^#+\s+(\S.*)/;
  let priorDepth = 1;
  data.split(/\r?\n/).forEach((line) => {
    if ((groups = line.match(header))) {
      id = line.match(anchor)[1].toLowerCase().replaceAll(/[\/\+\`\,\.\(\)\{\}]/g,'').replaceAll(/[^0-9a-z_]/g, '-').replaceAll(/-$/g, '');
      link = `<a href=${base}#${id}>link</a>`

      const depth = groups[1].length;
      for (i = priorDepth; i < depth; i++) process.stdout.write(`<ul>`)
      for (i = depth; i < priorDepth; i++) process.stdout.write(`</ul>`)
      if (depth <= 2) {
        process.stdout.write(`<li>${groups[2]} -- ${groups[3]} ${link}</li>\n`);
      } else {
        process.stdout.write(`<li>${link} ${groups[3].replace(/Slide\s*-+\s*/,"")}</li>\n`);
      }
      priorDepth = depth;
    }
  });
  for (i = 1; i < priorDepth; i++) process.stdout.write(`</ul>`)
  process.stdout.write("</body></html>\n");
});
