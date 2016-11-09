#!/bin/bash -x

rm -rf reports
mkdir reports

glide install
go test -coverprofile=reports/coverage.out
go tool cover -html=reports/coverage.out -o reports/coverage.html
go test -v > reports/test.tmp

ret_code=$?

cat reports/test.tmp | go-junit-report > reports/report.xml

rm reports/test.tmp

chown -R $USER_ID:$USER_ID reports/

exit $ret_code
