# robosys2026
このリポジトリは2026年のロボットシステム学の講義で利用するリポジトリです。いくつかのソフトウェアパッケージを公開しています。  

# plus コマンド
![test](https://github.com/terimayowasabi/robosys2026/actions/workflows/test.yml/badge.svg)  
- 標準入力から読み込んだ数字を足す。  
```ruby:実行例  
$ seq 5 | ./plus  
 15
  
$ echo 0.5 | ./plus  
 0.5  
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
