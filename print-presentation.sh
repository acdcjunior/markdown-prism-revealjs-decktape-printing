# What should be the generated PDF's name?
OUTPUT_FILE_PATH='presentation.pdf'
# What is the presentation file?
PRESENTATION_FILE_PATH='C:/git/markdown-prism-revealjs/index.html'


# If it is at a server, edit this variable directly
PRESENTATION_URL="file:///$PRESENTATION_FILE_PATH"

# If additional options are needed
OPTIONS="--size=1248x910"

#
# You shouldn't need to change from this line on
#

if [ ! -f $PRESENTATION_FILE_PATH ]; then
    echo "Presentation file was not found. Edit the 'PRESENTATION_FILE_PATH' variable at the script!"
    exit
fi
if [ ! -f bower_components/decktape/decktape.js ]; then
    echo "decktape was not found. Use bower to download it."
    exit
fi
if [ ! -f phantomjs/phantomjs.exe ]; then
    echo "PhantomJS was not found. Make sure you download it using ./phantomjs/getphantomjs.sh first!"
    exit
fi

./phantomjs/phantomjs.exe --web-security=no bower_components/decktape/decktape.js reveal $OPTIONS $PRESENTATION_URL $OUTPUT_FILE_PATH