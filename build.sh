#!/bin/bash -x
export GOPATH=$(pwd)
GITHASH=`git rev-parse --short HEAD`

mkdir -p bin
mkdir -p src/GoCD/

cp *.go src/GoCD/

cd src/GoCD/

go build -o ../../bin/$APPLICATION_NAME

cd ../../

rm -rf ./src

cp bin/$APPLICATION_NAME bin/application

cd bin

zip -9 $APPLICATION_NAME-$GITHASH-$SUFFIX.zip application

cp $APPLICATION_NAME-$GITHASH-$SUFFIX.zip $APPLICATION_NAME_To_Deploy.zip

rm $APPLICATION_NAME application
