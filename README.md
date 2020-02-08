# docker-cureutils
Provide a container that can execute [cureutils](https://github.com/greymd/cureutils) easily.  
If no options are specified, print a random message of Precure.  
~~~bash
$ docker-compose run --rm app           
プリキュア！メタモルフォーゼ！
知性の青き泉、キュアアクア！
希望の力と未来の光！
華麗に羽ばたく5つの心！
Yes！プリキュア5！

by 水無月かれん / キュアアクア (cure_aqua)
$ 
~~~
# Requirements
Docker

# Docker compose
~~~yml
version: '3'
services:
  app:
    image: ancolin/cureutils:latest
    environment:
      - USE_IN_BATTLE=TRUE
      - ONLY_USE_IN_BATTLE=FALSE
      - PRINT_QUICK=FALSE
      - HUMAN_NAME=
~~~
## Can execute the original cureutils
~~~bash
% docker-compose run --rm app cure version
Cureutils 1.2.0
$
~~~
## Environment is use by default action
### USE_IN_BATTLE
Print messages of transforming or messages in battle.
~~~bash
$ grep 'USE_ATTACK'
USE_ATTACK=TRUE
$ docker-compose run --rm app
(かわルンルン！)
プリキュアくるりんミラーチェンジ！
天空に舞う蒼き風！キュアプリンセス！
ハピネス注入！幸せチャージ！
ハピネスチャージプリキュア！

by 白雪ひめ / キュアプリンセス (cure_princess)
$ docker-compose run --rm app
スターカラーペンダント！
カラーチャージ！
煌めくー
星の力でー
憧れのー
私えがくよー
トゥインクル！トゥインクル！プリキュア！
トゥインクル！トゥインクル！プリキュア！
トゥインクル！トゥインクル！プリキュア！
スター☆トゥインクル！
スター☆トゥインクル！プリキュア！
あー！
宇宙に輝くキラキラ星！キュアスター！
スター☆トゥインクル！プリキュア！
プリキュア！スターパンチ！

by 星奈ひかる / キュアスター (cure_star)
$
~~~
### ONLY_USE_IN_BATTLE
Print only the messages in battle.
### PRINT_QUICK
Print quickly.
### HUMAN_NAME
Print messaged of the Precure.
~~~bash
$ grep 'HUMAN_NAME'
HUMAN_NAME=水無月かれん
$ docker-compose run --rm app
プリキュア！メタモルフォーゼ！
知性の青き泉、キュアアクア！
希望の力と未来の光！
華麗に羽ばたく5つの心！
Yes！プリキュア5！
岩をも砕く乙女の激流、受けてみなさい！
プリキュア！サファイヤ・アロー！

by 水無月かれん / キュアアクア (cure_aqua)
$ 
~~~
# cureutils
[cureutils](https://github.com/greymd/cureutils)