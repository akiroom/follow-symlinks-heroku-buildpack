#!/bin/bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

#./scripts/generate-sample-symbolic-link
echo $(pwd)
echo $(ls -la)

testPrepared () {
  assertEquals "" ""
}
