# pre-commit.sh

# stash un-added changes
git stash -q --keep-index

# update resume pdf with PhantomJS
phantomjs rasterize.js resume.html resume.pdf
git add resume.pdf

# pop stashed changes
git stash pop -q
