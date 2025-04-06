#!/bin/bash
mkdir backdrop
cd backdrop
ddev config --project-type=backdrop --docroot=.
# Add the official Bee CLI add-on
ddev add-on get backdrop-ops/ddev-backdrop-bee
ddev start
# Download Backdrop core
ddev bee download-core
# Create admin user
ddev bee si --username=admin --password=Password123 --db-name=db --db-user=db --db-pass=db --db-host=db --auto
# Login using `admin` user and `Password123` password
ddev launch