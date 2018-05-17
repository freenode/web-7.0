'use strict'

/**
 * Removes soft hyphens from copied text
 * @param  {Object} event
 * @return {Undefined}
 */
document.addEventListener('copy', function (event) {
  var oldText = window.getSelection().toString()
  var newText = oldText.replace(/\u00AD/g, '')

  event.clipboardData.setData('text/plain', newText)
  event.clipboardData.setData('text/html', newText.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;'))
  event.preventDefault()
})

/**
 * Scroll the page to honour the fixed navbar when linked to an anchor
 * @return {Undefined}
 */
function shiftWindow () { if (window.location.hash) window.scrollBy(0, -50) };
window.addEventListener('hashchange', shiftWindow)
window.onload = shiftWindow
