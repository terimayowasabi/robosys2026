# robosys2026
このリポジトリは2026年のロボットシステム学の講義で利用するリポジトリです。いくつかのソフトウェアパッケージを公開しています。   
プログラミングの経験が浅いため、コードに間違い、改善の余地がある場合がありますのでご注意ください。   

![test](https://github.com/terimayowasabi/robosys2026/actions/workflows/test.yml/badge.svg)  

# calc コマンド  
![test](https://github.com/terimayowasabi/robosys2026/actions/workflows/test.yml/badge.svg)

## 標準入力から読み込んだ数式を計算する。  

- インストール方法  
  1. GitHub上で** robosys2026 ** のリポジトリのCode からURLをコピーする。  
  [robosys2026](https://github.com/terimayowasabi/robosys2026 "robosys2026")
  
  2. terminalで` git clone git@github.com:terimayowasabi/robosys2026.git ` を行いリポジトリをクローンする。
  
  3. ` cd robosys2026 ` でrobosys2026へ移動。  
  
  4. calc の実行権限がない場合、` chmod +x calc ` で権限を付与する。  

- 入力
` $ echo "数式" | ./calc` で利用できる。

- 注意事項
  - 数式に含まれる空白、計算に利用できない文字は読み飛ばして計算を行う。
    ```ruby:実行例
    $ echo "2abc+3" | ./calc
     5.0

    $ echo "2 + 3" | ./calc
     5.0
    ```


- 四則演算
  - 加算には " + "  減算には " - " 乗算 " * " 除算には " / " を使用することで計算できる。
``` ruby:実行例
$ echo "5+3" | ./calc
 8.0

$ echo "8-3" | ./calc
 5.0

$ echo "2*3" | ./calc
 6.0

$ echo "4/2" | ./calc
 2.0
```

- 括弧の優先処理
  - 括弧は " ( ) " のみ利用できる。
  - 暗黙の乗算は利用できる。
  
``` ruby:実行例
$ echo "2*(2+3)"| ./calc
 10.0

$ echo "10/(2*(2+3))" | ./calc
 1.0

$ echo "2*(2+3)-3*(1+2)" | ./calc
 1.0

$ echo "2(2+3)-3(1+2)" | ./calc
 1.0

$ echo "(2+3)(2+3)" | ./calc
 25.0
```

- 三角関数
  - sin,cos,tanのみ利用できる。
  - sin(度数)、度数の計算が必要ない場合はsin度数で利用できる。
``` ruby:実行例
$ echo "sin(90)" | ./calc
 1.0

$ echo "cos(10+35)" | ./calc
 0.7071067811865476

$ echo "tan(10-10)" | ./calc
 0 

$ echo "cos45" | ./calc
 0.7071067811865476
```

- 累乗と平方根
  - 累乗は " ^ " または " ** " で利用できる。
  ``` ruby:実行例
  $ echo "-2^2" | ./calc
   -4.0

  $ echo "2**3" | ./calc
   8.0

  $ echo "(-2)^(2+2)" | ./calc
   16.0
  ```
  - 平方根は " ^0.5 " または " **0.5 " 、" root " で利用できる。
  ```ruby:実行例
  $ echo "4^0.5" | ./calc
   2.0

  $ echo "9**0.5" | ./calc
   3.0

  $ echo "root16" | ./calc
   4.0
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
