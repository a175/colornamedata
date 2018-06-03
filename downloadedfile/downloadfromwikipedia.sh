#!/bin/env bash
SF=jp.txt
HSF=jp.copyright
SLEEPTIME=20

echo 'kokutetsu'
w3m -dump -cols 1000 'https://ja.wikipedia.org/wiki/%E5%9B%BD%E9%89%84%E8%89%B2' > ./kokutetsu.$SF
echo sleep $SLEEPTIME; sleep $SLEEPTIME
w3m -dump -cols 1000 'https://ja.wikipedia.org/w/index.php?title=%E5%9B%BD%E9%89%84%E8%89%B2&offset=&limit=10000&action=history' > ./kokutetsu.$HSF
echo sleep $SLEEPTIME; sleep $SLEEPTIME

echo 'jis'
w3m -dump -cols 1000 'https://ja.wikipedia.org/wiki/JIS%E6%85%A3%E7%94%A8%E8%89%B2%E5%90%8D' > ./jis.$SF
echo sleep $SLEEPTIME; sleep $SLEEPTIME

w3m -dump -cols 1000 'https://ja.wikipedia.org/w/index.php?title=JIS%E6%85%A3%E7%94%A8%E8%89%B2%E5%90%8D&offset=&limit=10000&action=history' > ./jis.$HSF
echo sleep $SLEEPTIME; sleep $SLEEPTIME

SN=0
for A in %E3%81%82 %E3%81%84 %E3%81%86 %E3%81%88 %E3%81%8A %E3%81%8B %E3%81%8D %E3%81%8F %E3%81%91 %E3%81%93 %E3%81%95 %E3%81%97 %E3%81%99 %E3%81%9B %E3%81%9D %E3%81%9F %E3%81%A1 %E3%81%A4 %E3%81%A6 %E3%81%A8 %E3%81%AA %E3%81%AB %E3%81%AC %E3%81%AD %E3%81%AE %E3%81%AF %E3%81%B2 %E3%81%B5 %E3%81%B8 %E3%81%BB %E3%81%BE %E3%81%BF %E3%82%80 %E3%82%81 %E3%82%82 %E3%82%84 %E3%82%86 %E3%82%88 %E3%82%89 %E3%82%8A %E3%82%8B %E3%82%8C %E3%82%8D %E3%82%8F
do
    URL='https://ja.wikipedia.org/wiki/%E8%89%B2%E5%90%8D%E4%B8%80%E8%A6%A7_('$A')'
    HURL='https://ja.wikipedia.org/w/index.php?title=%E8%89%B2%E5%90%8D%E4%B8%80%E8%A6%A7_('$A')&offset=&limit=10000&action=history'
    echo $SN $URL
    w3m -dump -cols 1000 $URL > ./list-$SN.$SF
    echo sleep $SLEEPTIME; sleep $SLEEPTIME
    w3m -dump -cols 1000 $HURL > ./list-$SN.$HSF
    echo sleep $SLEEPTIME; sleep $SLEEPTIME
    SN=$((1+$SN))
done	 
