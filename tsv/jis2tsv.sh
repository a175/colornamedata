#!/bin/env bash
cat - |grep '^#'|sed 's/  */\t/g'|cut -f 1,2|sed 's/（.*）//g'|sed 's/\(.*\)\t\(.*\)/\2\t\1/'
