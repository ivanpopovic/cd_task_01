#!/bin/bash

set -e -x

pushd cd_app
  bundle install
  rspec
  brakeman
popd
