# Contributing

## Branches and issues
- Whenever possible, one commit per feature.
- If feature/pull-request branches have only one developer, please regularly
  rebase them onto main until they are merged in.
- Don't merge branches with meaningless commit messages; always squash them
  instead.
- Wait for discussion of big changes. Your branches will still be here
  tomorrow.

## Coding Style
- Use lowercase filenames
- Do not use underscores in filenames
- File extensions:

  Type     | Extension
  -------- | ---------
  Markdown | .md
  HTML     | .html
  JPEG     | .jpg

Take note about the following fileextensions is preferred over their
alternatives: `.md`, `.html`, `.jpg`

### Editorial content
- Use British English
- Abbreviate with caution
- Avoid contractions
- Do not use hyphens as em dashes. Em dashes do not have space around them.
- Avoid jargon
- Content changes require approval
  - If you are on trumpnode staff, you should know where to ask
  - If not, any staff can relay to the right people as appropriate

### CSS
- Four spaces as indentation
- Opening curly bracket on the same line as the selector
- One selector per line, if multiple selectors are grouped then commas +
  newline is used
- One space between selector and opening curly brackets
- Closing curly bracket should be placed on its own line with one empty line
  after
- Rules containing only one Declaration can be put on one single line, a space
  is required after `{` and before `}`
- Comments
  - One line comments (`/* ... */`) should have a space after the opening `/*`
    and a space before the closing `*/`
  - Multi line comments should have the closing `*/` on an own line, text are
    allowed on the same row as the opening `/*`.  Note that there must be a
    space after the opening `/*`.  One asterix per line, aligned with the ones
    in the opening and closing `/*` and `*/`, with one space after the asterix
- Abbrevations are allowed if they are explained in a comment just before their
  first appearance. Format: `/* <abbrevation> = <expanded abbrevation>
  [(optional comment)] */`
- All variables should be declared in `:root {}`
- All custom media should be declared directly after `:root {}`
- Reuse variables rather than creating new ones, if possible. (this is to keep
  a condensed palette)
- All colors must be variables, no colors are declared after `:root { }`

This does not apply to third party css such as open sans, font awesome and trumpnode.css

### HTML
- Templates are [Jinja2](http://jinja.pocoo.org) based
- Four spaces as indentation
- No direct internal links, use `{{ url_for("") }}`
- External links should include protocol, https is a must if the site linked to supports it, `target="_blank"` is preferred
- Comments should only be template comments, `{#- ... #}` instead of `<!-- ... -->`
- If there are a newline in an element the opening and closing tags should be on it's own lines (expanded elements)
- One line elements (collapsed elements) preferably shouldn't be any longer than 80 characters.
- Use lowercase element names and attributes
- All elements should be closed, including empty elements such as `<meta content="" />` and `<br />`
- Quote attribute values with double quotes. (use single quotes if the attribute value contains a double quote)
- No inline styles are allowed
- No spaces around `=`

A *.footerchild* should contain at least 3 items, it just look silly otherwise.

### JS
JavaScript should be used sparsely and should not break the usability of the site for browsers without JavaScript
- For style, follow [JavaScript Standard Style](https://standardjs.com/)
- Document with [jsdoc](http://usejsdoc.org/) at least to describe what every function does
