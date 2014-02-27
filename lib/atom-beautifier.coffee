module.exports =

  activate: ->
    atom.workspaceView.command "atom-beautifier:convert", => @convert()

  convert: ->
    editor = atom.workspace.activePaneItem

    beautify = require("js-beautify").js_beautify

    editor.setText beautify(editor.getText(),
      indent_size: 2
    )
