#!/bin/bash -x
GITHASH=`git rev-parse --short HEAD`

mkdir -p build

glide install

go build -o build/$APPLICATION_NAME

cp build/$APPLICATION_NAME build/application

cd build

zip -9 $APPLICATION_NAME-$GITHASH-$SUFFIX.zip application

cp $APPLICATION_NAME-$GITHASH-$SUFFIX.zip $APPLICATION_NAME_To_Deploy.zip

cp $APPLICATION_NAME ../

rm $APPLICATION_NAME application

cd ../

chown -R $USER_ID:$USER_ID build/ vendor/ $APPLICATION_NAME

