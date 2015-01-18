Array method sample
==========
配列操作メソッドのテストサンプルです。

### each
要素の数だけブロックを繰り返し実行する。

### each_with_index
要素の数だけブロックを繰り返し実行する。インデックス番号つき

### each_with_object
要素の数だけブロックを繰り返し実行し、繰り返しごとにブロック引数には各要素とオブジェクトを入れます。

### inject
ブロックを使って繰り返し計算を行うのに使います。
ブロックに順に「要素1、要素2」、「ブロックの前回の戻り値、要素3」、「ブロックの前回の戻り値、要素4」、...を渡します。
メソッドの戻り値はブロックが最後に返した値になります。
reduceメソッドの別名

### map
要素の数だけ繰り返しブロックを実行し、ブロックの戻り値を集めた配列を作成して返す。
collectメソッドの別名

### map!
要素の数だけ繰り返しブロックを実行し、各要素をブロックの戻り値と入れ替える


### select
ブロック引数に要素を入れながらブロックを繰り返し、
ブロックの戻り値が真になったときの要素を集め、新しい配列にして返す。
find_allメソッドの別名

### detect
ブロック引数に要素を入れながらブロックを繰り返し、
ブロックの戻り値が真になったときは繰り返し処理を中断しその要素を返す。
findメソッドの別名

### reject
要素の数だけ繰り返しブロックを実行し、
ブロックの戻り値が真になったときの要素を除き、新しい配列を作成して返す。

### combination
配列から引数n個の要素を選んだときの組合せ（順序なし、重複を許さない組合せ）を数え上げます。