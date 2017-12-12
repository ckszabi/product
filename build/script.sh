#!/bin/bash

python3 -V
pip3 -V
pytest --version
pytest
# check node and start node test
node -v
npm -v
npm install
EID=${execution.id} node selenium.js
