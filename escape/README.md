# What is mdConverter?

mdファイルを変換します。

## Setting

```sh
docker build -t mdconverter .
```

## Usage

1. mdファイルを作成しyamlフォルダ内の指定したファイル名\(sample だと input.md\) にして src に配置
    - input-files で指定可能
2. ./mdConverter.bat [yaml フォルダ内のファイル名] として実行
3. 指定されたファイルが生成
    - output-files で指定可能

もしコンテナのシェルを動かしたい場合

- "$(pwd)" は上手く動かない可能性あり

```sh
PowerShellで
> docker run -it --volume "$(pwd):/data" mypandoc /bin/sh

Contaier内で
$ pandoc -d xxx-defaults.yaml
```

## Reference

- [yaml setting manual](https://pandoc.org/MANUAL.html#default-files)
- [yaml setting - qiita](https://qiita.com/sky_y/items/b243c2618706605e5fdd)
- [Pandoc & Docker 1](https://kcpoipoi.hatenablog.com/entry/2020/07/27/120438)
- [Pandoc & Docker 2](https://blog.kawa-xxx.jp/entry/2020/12/05/162858)
