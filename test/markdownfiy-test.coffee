markdownfiy = require '../lib/markdownfiy'
fs = require 'fs'

fs.readFile 'test/html.html', encoding: 'utf-8', (err, html) ->
  throw err if err

  md = markdownfiy html
  console.log md
