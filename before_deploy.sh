#!/bin/bash
echo 'getting ready to deploy'
export ELASTIC_BEANSTALK_LABEL="commit_$(git rev-parse HEAD)_build_$TRAVIS_JOB_NUMBER";

#export ELASTIC_BEANSTALK_DESCRIPTION="abc";
#echo $ELASTIC_BEANSTALK_DESCRIPTION

zip -r deploy_package.zip . -x ".git/*" -x "*/.git/*" -x "vendor/*"
