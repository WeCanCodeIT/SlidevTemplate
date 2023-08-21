#!/bin/sh

export RUN=
export TIMEOUT="--timeout 60000"
export BUILD="build"

$RUN npx slidev export innovations.md $TIMEOUT --output=$BUILD/Innovations.pdf

# $RUN npx slidev export glossary.md $TIMEOUT --dark --output=$BUILD/glossary.pdf

$RUN scripts/toc.js > $BUILD/toc.html

# end of each week
export W1=90
export W2=155
export W3=201
export W4=281
export W5=315
export W6=335
export W7=366
export W8=395
export W9=434
export W10=453
export W11=463

# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=$(($W7+1))-$W9 --output=$BUILD/react.pdf
# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=$(($W6+1))-$W7 --output=$BUILD/css.pdf

export IMPORTANT=1,4-6,11,14-16
# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=1-$W1 --output=$BUILD/W1D1-W1D5.pdf
# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=$IMPORTANT,$(($W1+1))-$W2 --output=$BUILD/W2D1-W2D5.pdf
# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=$IMPORTANT,$(($W2+1))-$W3 --output=$BUILD/W3D1-W3D5.pdf
# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=$IMPORTANT,$(($W3+1))-$W4 --output=$BUILD/W4D1-W4D5.pdf
# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=$IMPORTANT,$(($W4+1))-$W5 --output=$BUILD/W5D1-W5D5.pdf
# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=$IMPORTANT,$(($W5+1))-$W6 --output=$BUILD/W6D1-W6D5.pdf
# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=$IMPORTANT,$(($W6+1))-$W7 --output=$BUILD/W7D1-W7D5.pdf
# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=$IMPORTANT,$(($W7+1))-$W8 --output=$BUILD/W8D1-W8D5.pdf
# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=$IMPORTANT,$(($W8+1))-$W9 --output=$BUILD/W9D1-W9D5.pdf
$RUN npx slidev export lessons.md $TIMEOUT --dark --range=$IMPORTANT,$(($W9+1))-$W11 --output=$BUILD/W10D1-W11D5.pdf
$RUN npx slidev export lessons.md $TIMEOUT --dark --range=1-$W11 --output=$BUILD/EntireCourseSoFar.pdf

$RUN scripts/mindmaps.js > mindmaps.md
$RUN npx slidev export mindmaps.md $TIMEOUT --dark --output=$BUILD/mindmaps.pdf


## For uploading the full PDF to https://drive.google.com/file/d/1keThSPTjKSIJlCjS3TrmQfrohd2R1gJV/view
## (Note that quiz questions are at the very end, so this should not be shared with students)
# $RUN npx slidev export lessons.md $TIMEOUT --output=$BUILD/lessons-export.pdf


## Fixme -- page ranges not up-to-date
# $RUN npx slidev export lessons.md $TIMEOUT --dark --range=14,226-244 --output=$BUILD/Agile.pdf
