#!/bin/sh

echo $1

FILE=$1
TITLE="${FILE%%.*}"
ZIP=$TITLE.zip

docker run -i magnayn/fireplug package - < $1  > ${ZIP}

rm -rf $TITLE
mkdir $TITLE
cd $TITLE && unzip ../$TITLE.zip
cd .. && rm $TITLE.zip
