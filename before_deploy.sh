#!/bin/bash
echo 'getting ready to deploy'

PACKAGE_VERSION=$(node -p -e "require('./package.json').version")
echo "Package version: $PACKAGE_VERSION"

export ELASTIC_BEANSTALK_LABEL="$PACKAGE_VERSION_commit_$(git rev-parse HEAD)_job_$TRAVIS_JOB_ID";
echo "Using label: $ELASTIC_BEANSTALK_LABEL"

#export ELASTIC_BEANSTALK_DESCRIPTION="abc";
#echo $ELASTIC_BEANSTALK_DESCRIPTION

zip -r deploy_package.zip . -x ".git/*" -x "*/.git/*" -x "vendor/*"
