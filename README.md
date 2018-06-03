# colornamedata

Css変数として日本語による色名を定義したcssファイル.

css/color.css には,
`--cssvcn-jp-赤:#ED1A3D;`
のような形で,
css変数が定義されています.
他のcssからは,
```
H1{
 color: var(--cssvcn-jp-赤);
}
```
などの様に参照します.

一般的な色名は
`--cssvcn-jp-赤`
のように
`--cssvcn-jp-`
という接頭辞を伴って定義されています.
国鉄色は
`--cssvcn-国鉄-白3号`
の様に`--cssvcn-国鉄-`を接頭辞として,
JISで定義されている色名は
`--cssvcn-jis-赤`
の様に`--cssvcn-jis-`を接頭辞として
定義されています.

css/color.css は, 日本語版wikipediaの色名一覧等の記事をもとに作成されています.
作成に使った記事の編集履歴 (著者) は, css/colors.wikipedia-copyright にあります.

css/color.css および css/colors.wikipedia-copyright は CC-BY-SA 3.0.



