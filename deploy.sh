#!/bin/bash
set -ev

echo 'getting ready to deploy'
zip deploy_package.zip
cp config config_ -r
cd config_
rm .git -r
ls -al
