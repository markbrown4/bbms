window.nl2br = (dataStr) ->
  dataStr.replace(/(\r\n|[\r\n])/g, "<br>")

window.br2nl = (dataStr) ->
  dataStr.replace(/(<br ?\/?>)/gi, "\n")