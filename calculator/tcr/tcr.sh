#!/usr/bin/env bash

./tcr/test.sh && git commit -am working || git reset --hard
