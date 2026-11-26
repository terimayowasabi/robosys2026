# robosys2026
このリポジトリは2026年のロボットシステム学の講義で利用するリポジトリです。いくつかのソフトウェアパッケージを公開しています。   
プログラミングの経験が浅いため、コードに間違い、改善の余地がある場合がありますのでご注意ください。   

# plus コマンド
![test](https://github.com/terimayowasabi/robosys2026/actions/workflows/test.yml/badge.svg)  
- 標準入力から読み込んだ数字を足す。  
```ruby:実行例  
$ seq 5 | ./plus  
 15
  
$ echo 0.5 | ./plus  
 0.5  
```
# calc コマンド
### 標準入力から読み込んだ数式を計算する。

- 四則演算
``` ruby:実行例
$ echo “5+3” | ./calc
 8.0

$ echo “8-3” | ./calc
 5.0

$ echo “2*3” | ./calc
 6.0

$ echo “4/2” | ./calc
 2.0
```

- 括弧の優先処理
``` ruby:実行例
$ echo “2*(2+3)”| ./calc
 10.0

$ echo “10/(2*(2+3)) | ./calc
 1.0

$ echo “2*(2+3)-3*(1+2) | ./calc
 1.0
```

-三角関数
    -sin,cos,tanのみ
``` ruby:実行例
$ echo “sin(90)” | ./calc
 1.0

$ echo “cos(10+35)” | ./calc
 0.7071067811865476

$echo “tan(100-10) | ./calc
 1.633123935319537e+16


```
## 必要なソフトウェア
- Python
    - テスト済みバージョン: 3.10 ~ 3.14  

## テスト環境
- Ubuntu 24.04 LTS  


## ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- このパッケージのコードは、下記のスライド（CC BY-SA 4.0 by Taro Suzuki）のものを、
  本人の許可を得て自身の著作としたものです。
    - https://github.com/tarolab-cit/lectures/tree/main/robosys2026
- © 2026 Tomoya Suzuki
