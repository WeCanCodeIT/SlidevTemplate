#!/usr/bin/env node
const fs = require("fs");

fs.readFile("lessons.md", "utf8", (err, data) => {
  if (err) {
    console.error(err);
    return;
  }

  const mindmap = /(\n```mermaid)|(^\|.+\|$)/m;
  data.split(/\r?\n---/).forEach((page) => {
    if (page.search(mindmap) >= 0) {
      process.stdout.write(page);
      process.stdout.write("\n---\n");
    }
  });
});
