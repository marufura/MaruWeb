@REM USAGE: 第一引数に yaml フォルダ内のファイル名を指定

@echo off
docker run --rm --volume "C:\Users\marufura\work\MaruWeb\mdConverter":"/data"  mdconverter -d yaml/%1.yaml
