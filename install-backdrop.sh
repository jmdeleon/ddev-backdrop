#!/bin/bash
curl -LJO https://github.com/backdrop/backdrop/releases/latest/download/backdrop.zip
unzip ./backdrop.zip && rm -f backdrop.zip
ddev config --project-type=backdrop --docroot=backdrop
ddev start
ddev launch
