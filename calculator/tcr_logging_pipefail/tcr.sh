#!/usr/bin/env bash

# Required for correct failing when logging in test function.
set -o pipefail

test() {
    ./test.sh | tee ./tcrfeedback 2>&1
}

commit() {
    git commit -am working
}

revert() {
    git reset --hard
}

test && commit || revert
