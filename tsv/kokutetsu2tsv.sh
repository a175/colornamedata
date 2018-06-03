#!/bis/env bash
cat - |grep '号 '|tr abcdef ABCDEF|sed 's/\([0-9A-F][0-9A-F][0-9A-F][0-9A-F][0-9A-F][0-9A-F]\).*/#\1/g'|sed 's/ .* /\t/g'|grep '号'
