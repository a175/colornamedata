TSVD=../tsv
PRE=--cssvcn-

all: colors.css  colors.wikipedia-copyright

colors.css: ${TSVD}/list.jp.* ${TSVD}/kokutetsu.jp.* ${TSVD}/jis.jp.*
	echo "/*  */">colors.css
	echo ":root {" >> colors.css
	cat ${TSVD}/list.jp.txt | bash tsv2css.sh ${PRE}jp- >>colors.css
	cat ${TSVD}/kokutetsu.jp.txt | bash tsv2css.sh ${PRE}国鉄- >>colors.css
	cat ${TSVD}/jis.jp.txt | bash tsv2css.sh ${PRE}jis- >>colors.css
	echo "}" >> colors.css

colors.wikipedia-copyright: colors.css ${TSVD}/list.jp.wikipedia-copyright ${TSVD}/kokutetsu.jp.wikipedia-copyright ${TSVD}/jis.jp.wikipedia-copyright
	cat  ${TSVD}/list.jp.wikipedia-copyright ${TSVD}/kokutetsu.jp.wikipedia-copyright ${TSVD}/jis.jp.wikipedia-copyright > colors.wikipedia-copyright

clean:
	rm -f colors.css colors.wikipedia-copyright
