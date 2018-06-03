#!/bin/env bash


SUFIX=$1
cat -|\
    sed 's/\t/:/g'|\
    sed 's/$/;/g'|\
    sed 's/^/'$SUFIX'/g'
