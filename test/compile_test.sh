#!/bin/bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

cd ${BUILDPACK_HOME}
./scripts/generate-sample-symbolic-link
echo $(pwd)
echo $(ls -la)

testPrepared () {
  SOURCE_DIR=./example/source_dir
  assertTrue "Should have symbolic link ${SOURCE_DIR}" "[ -f ${SOURCE_DIR} ]"
}
