#!/bin/sh -e

# this is an helper
# to use into your travis file
# golang is required.
#
# to use it
# curl -L https://raw.githubusercontent.com/mh-cbon/go-bin-deb/master/setup-repository.sh \
# | GH=YOUR/REPO sh -xe

yes | go get -u github.com/mh-cbon/go-bin-deb/go-bin-deb-utils
go-bin-deb-utils setup-repository -out="`pwd`/apt" -push -repo=$GH
