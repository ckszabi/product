#!/bin/bash
set -ev

echo 'getting ready to deploy'
pwd
echo $ELASTIC_BEANSTALK_LABEL

export ELASTIC_BEANSTALK_LABEL='commit: $(git rev-parse HEAD)';
echo $ELASTIC_BEANSTALK_LABEL

export ELASTIC_BEANSTALK_DESCRIPTION="abc";
echo $ELASTIC_BEANSTALK_DESCRIPTION

zip -r deploy_package.zip . -x ".git/*" -x "*/.git/*" -x "vendor/*"
