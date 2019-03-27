#!/usr/bin/env bash

test() {
    TEST_RESULT = $(./test.sh) | tee ./tcrfeedback 2>&1
    if [[ "$TEST_RESULT" -ne 0 ]]
        then exit 1
    fi
}

commit() {
    git add .
    if [[ $# -eq 0 ]]
            then git commit -am working
            else git commit -am "$1"
    fi
}

test_code_only() {
    git status | grep src
}

revert() {
    git reset --hard
    git clean -fd
}

test && commit "$@" || revert
#(test && commit "$@") || test_code_only || revert
