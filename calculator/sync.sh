#!/usr/bin/env bash

while(true); do
    git pull --rebase;
    git push;
    sleep 3
done;