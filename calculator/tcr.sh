#!/usr/bin/env bash

test() {
    echo "TEST"
    ./test.sh | tee ./tcrfeedback 2>&1
    if [[ ${PIPESTATUS[0]} -ne 0 ]]
        then exit 1
    fi
}

commit() {
    echo "COMMIT"
    git add .
    if [[ $# -eq 0 ]]
            then git commit -am working
            else git commit -am "$1"
    fi
}

test_code_only() {
    echo "TEST CODE ONLY"
    git status | grep src
}

revert() {
    echo "REVERT"
    git reset --hard
    git clean -fd
}

test && commit "$@" || revert
#(test && commit "$@") || test_code_only || revert
