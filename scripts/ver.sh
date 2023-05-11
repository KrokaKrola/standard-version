#!/usr/bin/bash

# show version
echo $(sed -n 's/.*"version": *"\([^"]*\)".*/\1/p' package.json)