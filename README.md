# latex2pdf
* Use Docker to convert main.tex to main.pdf.
* Dockerを使ってmain.texをmain.pdfに変換します．

# style
* The files are stored in [here](https://www.ipsj.or.jp/journal/submit/style.html) of the Information Processing Society of Japan.
* 日本の情報処理学会の[こちら](https://www.ipsj.or.jp/journal/submit/style.html)のファイルが一部格納されています．

# Usage
* The following command alone will generate main.pdf.
* 以下のコマンドだけで main.pdf が生成されます．
~~~
docker compose up -d --build&& docker cp latex2pdf-main-container:/workdir/main.pdf ./
~~~
