## Dev Requirements:

* [Myth](http://www.myth.io/)
* [cms7](https://github.com/edk0/cms7)

## Git

* Master is whats on [freenode](https://freenode.net) please do only merge to this branch with permission from at least two of the following: spb, christel, mist, kloeri, edk or Swant
* design/ prefix is for design changes of the website, ONE CHANGE PER BRANCH
* template/ prefix is for template changes, ONE CHANGE PER BRANCH
* content/ prefix is for new content, blogposts and faq md files, ONE ARTICLE PER BRANCH
* hotfix/ prefix is for urgent bugs, these might be fast forwarded without deeper testing

Branches should be tested on both big and small screens.
No direct merges to master, use Pull Requests.

## Editing Rules

Do not edit static/css/style.css as it'll be overwritten on next compile, instead edit static/css/source.css and run myth static/css/source.css static/css/style.css