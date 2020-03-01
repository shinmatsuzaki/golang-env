# golang-env
- Go言語の実行環境入りのDockerfile
- 手っ取り早くGo言語をCLI上で試してみたい時にご利用ください

## 実行に必要な環境
- docker, docker-compose, make がインストールされていること

## how to use
### Dockerイメージのビルド＆コンテナの起動
- ビルド時にカレントディレクトリに有るファイルをすべてコンテナ内にコピーします
```
$ make
```

### Dockerコンテナにssh
```
$ make ssh
```

### Dockerコンテナを終了
```
$ make clean
```
