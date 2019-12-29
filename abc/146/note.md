# [146](https://atcoder.jp/contests/abc146/)
## A
そんなに言うことなし
SUN-SATを順に並べたリストのインデックスを使う
のはありかなくらい

## B
A-Zを並べたストリングのインデックスを使った
rubyなら`s.tr('A-Z','B-ZA')`で文字をずらせるらしい
何文字ずらすかはNでもらうので
```
n.times do
  s.tr('A-Z', 'B-ZA')
end
```
で元の文字列sをN回右（A->B）な感じにずらして行ける
