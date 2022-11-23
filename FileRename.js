//Run this to rename image or metadata files to a simple incrementing number where file name includes that number at the end of the file name
//example progress_image_100_4985086c-4ae8-4a48-a43c-a1bba15f2be5_1.png is renamed to 1.png
const fs = require("fs");
const args = process.argv.slice(2);
const inputFolder = args[0];
const dir = `${__dirname}/${inputFolder}/`;
const inputFiles = fs.readdirSync(dir).sort();

inputFiles.forEach((file) => {
    fs.renameSync(`${dir}/${file.split("_").pop()}`);
    console.log(file);
});
