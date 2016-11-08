#/bin/bash -x
docker run --rm -v "$PWD":/go/src/GoCD-Deploy-Elastic-Beanstalk -w /go/src/GoCD-Deploy-Elastic-Beanstalk -e USER=`id -u $USER` -e APPLICATION_NAME -e SUFFIX -e AWS_DEPLOY_APPLICATION -e AWS_DEPLOY_ENVIRONMENT -e GO_PIPELINE_COUNTER -e S3BUCKET gocd-builder ./build-on-docker.sh
