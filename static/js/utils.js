/**
 * Removes soft hyphens from copied text
 * @param  {Object} event
 * @return {Undefined}
 */
document.addEventListener('copy', function (event) {
  let oldText = window.getSelection().toString()
  let newText = oldText.replace(/\u00AD/g, '')

  event.clipboardData.setData('text/plain', newText)
  event.clipboardData.setData('text/html', newText.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;'))
  event.preventDefault()
})
