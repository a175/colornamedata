#!/bin/env bash

cat - |grep  '^#' -B1|grep -v -e '^--$'|\
    sed 's/\(#......\).*/\1/'|\
    sed 's/^ *//g'|\
    sed 's/  */\t/g'|\
    cut -f 1,2|sed 's/\t[A-Za-z].*$//'|sed 's/.*\t//g'|\
    tr '\n' '\t'|\
    sed 's/\t#/#/g'|\
    sed 's/\t/\n/g'|\
    sed 's/#/\t#/g'|\
    sed 's/・.*\t/\t/g'|sed 's/\^.*\t/\t/g'

