# ContinuousBuildIntegration
Created a node-js application with continuous build integration using TRAVIS CI

## Code Structure:
1.	src/: This directory contains NodeJS Application with single endpoint:/healthcheck
2.	Dockerfile: File contains specification for containerizing the application. 
3.	.travis.yml: This file defines CI pipeline for Application.
4.	travis/: Contains a script which is executed by Travis CI for building the application and deploying application to Heroku.

## How Application Works?
 ![ApplicationWorkFlow](https://user-images.githubusercontent.com/711658/63795761-4417eb00-c922-11e9-9794-6f9407bf4d84.png)

## Deployment and Build Results:
* Checking the results of deployed Application on Heroku: https://whispering-oasis-97723.herokuapp.com/healthcheck
* Checking the Travis Logs: https://travis-ci.org/chiragahuja/ContinuousBuildIntegration
