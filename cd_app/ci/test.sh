#!/bin/bash

set -e -x

pushd git-repository/cd_app
  bundle install
  rspec
  brakeman
popd
