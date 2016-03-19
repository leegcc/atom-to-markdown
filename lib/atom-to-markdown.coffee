{CompositeDisposable} = require 'atom'
clipboard = require 'clipboard'
markdownfiy = require './markdownfiy'

module.exports = AtomToMarkdown =
  activate: (state) ->
    @subscriptions = new CompositeDisposable
    @subscriptions.add atom.commands.add 'atom-workspace', 'atom-to-markdown:convert': => @convert()

  convert: ->
    html = clipboard.readHtml();
    return unless html

    if editor = atom.workspace.getActiveTextEditor()
      editor.insertText markdownfiy html
