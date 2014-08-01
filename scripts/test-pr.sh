#!/bin/bash
set -ev
if [[ "${TRAVIS_PULL_REQUEST}" =~ ^-?[0-9]+$ ]]; then
  grunt
fi
