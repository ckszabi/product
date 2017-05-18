#!/bin/bash
echo 'getting ready to deploy'

# getting package version
PACKAGE_VERSION=$(node -p -e "require('./package.json').version")
echo "Package version: $PACKAGE_VERSION"

# current time
TIMESTAMP="$(date +"%T") UTC"

# create label
export ELASTIC_BEANSTALK_LABEL="v${PACKAGE_VERSION} (build ${TRAVIS_JOB_NUMBER}, ${TIMESTAMP})";
echo "Using label: $ELASTIC_BEANSTALK_LABEL"

#export ELASTIC_BEANSTALK_DESCRIPTION="abc";
#echo $ELASTIC_BEANSTALK_DESCRIPTION

# create zip
zip -r deploy_package.zip . -x ".git/*" -x "*/.git/*" -x "vendor/*"
