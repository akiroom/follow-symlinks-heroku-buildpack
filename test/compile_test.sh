#!/bin/bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

${BUILDPACK_HOME}/scripts/generate-sample-symbolic-link
echo $(pwd)
echo $(ls -la)

testPrepared () {
  SOURCE_DIR=${BUILDPACK_HOME}/example/source_dir
  assertTrue "Should have symbolic link ${SOURCE_DIR}`" "[ -f ${SOURCE_DIR} ]"
}
