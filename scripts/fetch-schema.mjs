import fetch from 'node-fetch'
import fs from 'fs';
const fsPromises = fs.promises;

const response = await fetch('https://raw.githubusercontent.com/release-drafter/release-drafter/master/schema.json');
const body = await response.text();

await fsPromises.writeFile('schema.json', body, 'utf-8')
