#!/bin/bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

cd ${BUILDPACK_HOME}
./scripts/generate-sample-symbolic-link
#echo $(pwd)
#echo $(ls -la)

testPrepared () {
  SOURCE_DIR=./example/source_dir

  # -L option requires symbolic link
  assertTrue "Should have symbolic link ${SOURCE_DIR}" "[ -L ${SOURCE_DIR} ]"
}
