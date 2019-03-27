#!/usr/bin/env bash

test() {
    ./test.sh
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
