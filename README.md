#resumé

##low dependency, easy template to make great resumés

Look at the included example (my resumé) under resume.html. The pdf version is included as resume.pdf. Inlined CSS leaves the only icons and Open Sans font link (directed to Google's AJAX open fonts API) as dependency's, as well as PhantomJS if you want to render the html resumé as a pdf.

#install

```bash
git clone https://github.com/cdipaolo/resume.git
cd resume

# Add pre-commit hook to update the pdf rendition
ln -s pre-commit .git/hooks/pre-commit

# If on mac modify premissions for pre-commit hook
chmod +x .git/hooks/pre-commit
```

that's it!

#modify

If you want to use my resume (resume.html) as a template, just start editing that. If you instead want to use the blank resume-template.html, just rename the resume-template.html to resume.html to keep the pre-commit hook working.

You can use render.js (built in example to PhantomJS) to render the html file as a pdf. This is done in the pre-commit hook, but you can manually do it if you want.

```bash
# update resume pdf with PhantomJS
phantomjs rasterize.js resume.html resume.pdf
```
