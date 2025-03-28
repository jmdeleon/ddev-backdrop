#!/bin/bash
curl -LJO https://github.com/backdrop/backdrop/releases/latest/download/backdrop.zip
unzip ./backdrop.zip && rm -f backdrop.zip && mv -f ./backdrop/{.,}* . ; rm -rf backdrop
ddev config --project-type=backdrop
ddev start
ddev launch