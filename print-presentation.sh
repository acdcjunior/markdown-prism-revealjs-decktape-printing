PRESENTATION_URL='file:///C:/myGitHubRepos/markdown-prism-revealjs/index.html'
OUTPUT_FILE='presentation.pdf'

./phantomjs/phantomjs.exe --web-security=no bower_components/decktape/decktape.js reveal $PRESENTATION_URL $OUTPUT_FILE