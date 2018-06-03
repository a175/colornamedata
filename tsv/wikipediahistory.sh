#!/bin/env bash

cat - |grep -F \
"変更履歴
最新"|\
    sed 's/  • (最新 | 前)(.)(.)//'|\
    sed 's/(取り消し)//'|\
    sed 's/(会話 | 投稿記録)//'|\
    sed 's/(会話)//'
