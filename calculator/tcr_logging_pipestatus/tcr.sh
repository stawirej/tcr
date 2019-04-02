#!/usr/bin/env bash

test() {
    ./test.sh | tee ./tcrfeedback 2>&1

    if [[ ${PIPESTATUS[0]} -ne 0 ]]
        then exit 1
    fi
}

commit() {
    git commit -am working
}

revert() {
    git reset --hard
}

test && commit || revert
