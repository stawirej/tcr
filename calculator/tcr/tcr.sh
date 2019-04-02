#!/usr/bin/env bash

./test.sh && git commit -am working || git reset --hard
