#!/bin/bash

# getting versions
python3 -V
pip3 -V
pytest --version
pytest
# check node and start node test
node -v
npm -v
npm install
EID=${TRAVIS_JOB_NUMBER} node selenium.js
node selenium.js
