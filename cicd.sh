#!/bin/sh
cd /home/Jevon/web-development/
git pull
gsutil cp -r /home/Jevon/web-development/ gs://bootstrap_jenkins
