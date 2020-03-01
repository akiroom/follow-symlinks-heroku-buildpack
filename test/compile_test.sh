#!/bin/bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testPrepared () {
  cd ${BUILDPACK_HOME}
  ./scripts/generate-sample-symbolic-link
  SOURCE_DIR=./example/source_dir
  DEST_SYM_LINK=./example/dest_dir/source_dir
  IGNORE_SYM_LINK=./example/dest_dir/ignored_dir/source_dir

  # -L option requires symbolic link
  assertTrue "Should have directory ${SOURCE_DIR}" "[ -d ${SOURCE_DIR} ]"
  assertTrue "Should have symbolic link ${DEST_SYM_LINK}" "[ -h ${DEST_SYM_LINK} ]"
  assertTrue "Should have symbolic link ${IGNORE_SYM_LINK}" "[ -h ${IGNORE_SYM_LINK} ]"
}

testCompile () {
  cd ${BUILDPACK_HOME}
  SOURCE_DIR=./example/dest_dir/source_dir
  assertTrue "Should have new actual files ${SOURCE_DIR}" "[ -d ${SOURCE_DIR} ]"
}
