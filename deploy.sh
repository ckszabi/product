#!/bin/bash
set -ev

echo 'getting ready to deploy'
pwd
zip -r deploy_package.zip .
