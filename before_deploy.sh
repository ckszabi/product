#!/bin/bash
echo 'getting ready to deploy'

PACKAGE_VERSION=$(node -p -e "require('./package.json').version")
echo "Package version: $PACKAGE_VERSION"

TIMESTAMP="$(date +"%T")"

export ELASTIC_BEANSTALK_LABEL="v${PACKAGE_VERSION} build_${TRAVIS_BUILD_NUMBER} at_${TIMESTAMP}";
echo "Using label: $ELASTIC_BEANSTALK_LABEL"

#export ELASTIC_BEANSTALK_DESCRIPTION="abc";
#echo $ELASTIC_BEANSTALK_DESCRIPTION

zip -r deploy_package.zip . -x ".git/*" -x "*/.git/*" -x "vendor/*"
