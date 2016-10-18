GoCD-Deploy-Elastic-Beanstalk
==========================

A small experiment/example to deploy a Go web application to AWS Elastic Beanstalk using [GoCD](https://www.go.cd/)

This repository contains a very small Go web application and some scripts to test, build and deploy it to AWS Elastic Beanstalk. So far it is working quite well, however there are plenty room for improvements.

How it works
------------------
* The Go files ``main.go, handlers.go, handlers_test.go`` are the small web application and its tests;
* The Bash scripts ``tests.sh, build.sh and deploy.sh``, as they name suggest are scripts to test, build and deploy this application;
* The Python script ``wait.py`` waits the deployment to finish.

### Web application endpoints:
* ``/health/`` returns an empty body and status code 200. It shows that the application is healthy;
* ``/hello/`` returns a "hello world" JSON and status code 200. Here is an example (``SomeNumber`` is just a random number):
```json
 {
	"Message": "Hello World",
	"SomeNumber": "5577006791947779000",
	"Version": "0.2"
 }
```

Requirements to run
-----------------------------
* The GoCD agent needs: 
 * Go globally installed;
 * Python 2.7, [Boto3](https://boto3.readthedocs.io/en/latest/index.html) and [AWS CLI](https://aws.amazon.com/cli/) also installed globally.

TODO
--------
* Improve documentation about the environment variables used;
* Add a GoCD pipeline template/example;
* Build applications with dependencies using [Glide](https://github.com/Masterminds/glide);
* Use Docker to test, build and deploy the application;
* Improve all scripts/steps
* Use Python 3

