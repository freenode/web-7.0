# web-7.0 [![Build Status](https://travis-ci.org/freenode/web-7.0.svg?branch=main)](https://travis-ci.org/freenode/web-7.0) [![irc: #freenode-website](https://img.shields.io/badge/irc-%23freenode--website-brightgreen.svg)](https://webchat.freenode.net/?channels=freenode-website)

A shiny replacement for http://freenode.net.


## Building

You'll need our node.js dependencies:

```console
$ sudo npm install -g postcss-cli@7.1.2 svgo uglifyjs
$ npm install
```

Then, assuming a Python 3.4 (or later) installation:

```console
$ python3 -m venv env
$ . env/bin/activate
$ pip install -r requirements.txt
$ cms7
```

If everything went well, you should see a lot of log output, and `out/` will
have the website in it.

Because we generate the site statically, you'll need to re-run `cms7` each
time you change something. If your editor likes compile commands that can run
from any directory, you can also use `cms7 -c /path/to/config.yml`.


## Contributing

- Whenever possible, one commit per feature.
- If feature/pull-request branches have only one developer, please regularly
  rebase them onto main until they are merged in.
- Don't merge branches with meaningless commit messages; always squash them
  instead.
- Wait for discussion of big changes. Your branches will still be here
  tomorrow.

Please comply with the [contribution guidelines](CONTRIBUTING.md)

Helpful tip for those merging PRs: you can browse the tree a merge would
result in by navigating to
`https://github.com/freenode/web-7.0/tree/pull/XYZ/merge`, where `XYZ` is the
pull request number.

You can also go to `https://freenode.net/web-7.0/BRANCHNAME/` to see a
build of any particular branch. This also works for *internal* pull requests
(they are named `pull-X`).

## Architecture / Orientation

The site is generated from
[Markdown](https://daringfireball.net/projects/markdown/) sources and
[Jinja2](http://jinja.pocoo.org/) templates, found in `content/` and
`templates/` respectively. The Travis build deploys to GitHub Pages
automatically on every push.

Various modules convert the sources to a useful output structure. Eventually
cms7 will document this process, but for now:

- `content/pages/` contains plain pages which are rendered in `out/` using
  `page.html`.
- `content/news/` contains blog/news posts which are rendered in `out/news/`
  using `article.html`.
- `content/kb/` contains KB categories: each directory `content/kb/X/`
  has the entries for category `X`. These are rendered in `out/kb/answers/`
  with `kb.html`.

  Indexes of these entries are rendered in `out/kb/` with `kb_index.html`,
  according to a list in `config/kb.yml`.


### Markdown metadata

cms7 uses the markdown metadata extension, and recognises some special keys:

- `title` sets the page title
- `slug` overrides the target URL: `pages/hello` with `slug: banana` would
  become `out/banana.html`
- `template` overrides the template with which to render this Markdown file

Blog-specific:

- `author`
- `date`
- `enclosure` sets the podcast URL of an article


### Internal linking

Everything that ends up in the final output has a name that identifies it to
the rest of the website. If a file is derived directly from an input file,
generally its name is derived from the name of the *input*.

- Markdown files like `content/pages/hello.md` are named their own name
  relative to the content directory, minus their extension: `pages/hello`.
- static resources like `static/img/cat.jpg` are named their own name
  relative to the repository root: `static/img/cat.jpg`.
- Templates that are rendered from nothing (e.g. to make the index page) are
  named whatever the config file says to name them.
- KB indexes are named `kb/index/X`, where X is the name of the index in
  `config/kb.yml`.

cms7 can generate a relative URL to anything with a name from any page. This
should always be preferred over manually writing links. To generate a relative
link from a Markdown document, just link to a name:

```markdown
[A page about frogs](pages/frog)
```

To do the same from a template, call `url_for`:

```html+jinja
<a href="{{ url_for('pages/frog') }}">A page about frogs</a>
```
