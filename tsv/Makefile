DLFILED=../downloadedfile


all: list.jp.txt list.jp.wikipedia-copyright kokutetsu.jp.txt kokutetsu.jp.wikipedia-copyright jis.jp.txt jis.jp.wikipedia-copyright

list.jp.txt: ${DLFILED}/list-*.jp.txt ${DLFILED}/list-*.jp.copyright list2tsv.sh
	cat ${DLFILED}/list-*.jp.txt | bash list2tsv.sh > list.jp.txt

list.jp.wikipedia-copyright:  wikipediahistory.sh list.jp.txt ${DLFILED}/list-*.jp.copyright
	cat ${DLFILED}/list-*.jp.copyright | bash wikipediahistory.sh > list.jp.wikipedia-copyright

kokutetsu.jp.txt: ${DLFILED}/kokutetsu.jp.txt ${DLFILED}/kokutetsu.jp.copyright kokutetsu2tsv.sh
	cat ${DLFILED}/kokutetsu.jp.txt | bash kokutetsu2tsv.sh > kokutetsu.jp.txt

kokutetsu.jp.wikipedia-copyright:  wikipediahistory.sh kokutetsu.jp.txt ${DLFILED}/kokutetsu.jp.copyright
	cat ${DLFILED}/kokutetsu.jp.copyright | bash wikipediahistory.sh > kokutetsu.jp.wikipedia-copyright


jis.jp.txt: ${DLFILED}/jis.jp.txt ${DLFILED}/jis.jp.copyright jis2tsv.sh
	cat ${DLFILED}/jis.jp.txt | bash jis2tsv.sh > jis.jp.txt

jis.jp.wikipedia-copyright:  wikipediahistory.sh jis.jp.txt ${DLFILED}/jis.jp.copyright
	cat ${DLFILED}/jis.jp.copyright | bash wikipediahistory.sh > jis.jp.wikipedia-copyright

clean:
	rm -f list.jp.txt list.jp.wikipedia-copyright kokutetsu.jp.txt kokutetsu.jp.wikipedia-copyright jis.jp.txt jis.jp.wikipedia-copyright
