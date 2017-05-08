#!/bin/bash
echo 'getting ready to deploy'

PACKAGE_VERSION=$(node -p -e "require('./package.json').version")

export ELASTIC_BEANSTALK_LABEL="$PACKAGE_VERSION_commit_$(git rev-parse HEAD)_job_$TRAVIS_JOB_ID";

#export ELASTIC_BEANSTALK_DESCRIPTION="abc";
#echo $ELASTIC_BEANSTALK_DESCRIPTION

zip -r deploy_package.zip . -x ".git/*" -x "*/.git/*" -x "vendor/*"
