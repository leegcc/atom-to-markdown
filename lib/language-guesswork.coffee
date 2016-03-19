module.exports = languageGuesswork = (code) ->
  return 'bash' if (code.indexOf '$') is 0

  return 'java' if (code.indexOf 'System.out.print') isnt -1
  return 'java' if (code.indexOf 'public') isnt -1
  return 'java' if (code.indexOf 'private') isnt -1
  return 'java' if (code.indexOf 'protected') isnt -1

  htmlBlocks = ['address', 'article', 'aside', 'audio', 'blockquote', 'body',
    'canvas', 'center', 'dd', 'dir', 'div', 'dl', 'dt', 'fieldset', 'figcaption',
    'figure', 'footer', 'form', 'frameset', 'h1', 'h2', 'h3', 'h4','h5', 'h6',
    'header', 'hgroup', 'hr', 'html', 'isindex', 'li', 'main', 'menu', 'nav',
    'noframes', 'noscript', 'ol', 'output', 'p', 'pre', 'section', 'table',
    'tbody', 'td', 'tfoot', 'th', 'thead', 'tr', 'ul'
  ]
  htmlVoids = [
    'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'input',
    'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr'
  ]
  htmlBlocks.some (name) -> (code.indexOf "<#{name}>") isnt -1
  htmlVoids.some (name) -> (code.indexOf "<#{name}") isnt -1

  return 'js' if (code.indexOf 'var') isnt -1
  return 'js' if (code.indexOf 'function') isnt -1
  return 'js' if (code.indexOf 'let') isnt -1

  return ''
