# [147](https://atcoder.jp/contests/abc147)
## A
atcoderで使われてるrubyのバージョン（2.3.3）では
Array.sumが定義されてないので注意
本番では提出前にコードテストやった方がいいかも
てかローカルのatcoder用ディレクトリのローカルバージョン下げときましょうね->下げた

## B
標準入力から文字列を取得した時、末尾に改行文字"\n"があって邪魔
`chop`で末尾を取り除く回答が良さげ
string をスライスして順々にカウントしたが、
１文字毎にArrayに突っ込んで、popして後ろから文字を取得するやり方はクールだと思った。
```ruby
a = gets.chop.chars
p s.count(|x| x != a.pop)
```
