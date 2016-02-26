## Dev Requirements:

* [Myth](http://www.myth.io/)
* [svgo](https://github.com/svg/svgo)
* [cms7](https://github.com/edk0/cms7)

## Building

Install `myth` and `svgo` globally by running `npm install -g myth svgo`.

Python 3 is needed for `cms7` to work. Make a virtualenv with `pyvenv env`,
then run `pip install -r requirements.txt` to install `cms7`.

With dependencies installed, just run `cms7` to build. The output files are in
the `out/` folder. You can run `python -m http.server` in the `out/` folder to
serve the compiled files, and go to `http://localhost:8000` to see the files.

## Git

`master` is automatically deployed to https://freenode.github.io/web-7.0/. It
is also configured to reject commits that haven't had a build succeed in a
branch or pull request; make one and ideally get someone else to confirm.

Branches are cheap; use one per feature.

Changes should be tested on both big and small screens.
