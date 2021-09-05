#!/bin/sh
#Basic upload script.

aws s3 sync . s3://florida-premier-realty --acl public-read
