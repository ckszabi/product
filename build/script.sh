#!/bin/bash

# getting versions
echo "python3 version:"
python3 -V

echo "pip3 version:"
pip3 -V

echo "pytest version:"
pytest --version

echo "starting pytest..."
pytest








# check node and start node test
#echo "node version:"
#node -v

#echo "npm version:"
#npm -v

#echo "installing node dependencies"
#npm install

#echo "starting node selenium tests..."
#EID=${TRAVIS_JOB_NUMBER} node selenium.js

