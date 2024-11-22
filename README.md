# easy-rails-start

このリポジトリは、ローカル環境でのRailsアプリケーションのセットアップを簡素化するためのスクリプトと設定を提供します。

## 特徴

- `Dockerfile.local`：ローカル環境用のDocker設定ファイル。
- `Makefile`：一般的なタスクを簡単に実行するためのMakefile。
- `setup.sh`：初期セットアップを自動化するシェルスクリプト。

## 使用方法
初期セットアップ
1. buildします：

   ```bash
   make build
2. コンテナを立ち上げます：

   ```bash
   make up
   ```

rails consoleを開きたいとき
```bash
make c
```

コンテナを落としたい時
```bash
make stop
```

コンテナに入りたい時
```bash
make bash
```