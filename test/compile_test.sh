#!/bin/bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

${BUILDPACK_HOME}/scripts/generate-sample-symbolic-link
echo $(pwd)
echo $(ls -la)

testPrepared () {
  assertEquals "" ""
}
