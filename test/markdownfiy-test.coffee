markdownfiy = require '../lib/markdownfiy'
fs = require 'fs'
path = require 'path'

fs.readFile path.join(__dirname, 'html.html'), encoding: 'utf-8', (err, html) ->
  throw err if err

  md = markdownfiy html
  console.log md
