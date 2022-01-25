# MS SQL docker-compose Sample

MSSQL Serverの開発環境をdocker-composeで立てるためのサンプル

## 下準備
`db/init.sql`にSQL Server起動後に実行したいクエリ（テストデータをInsertしたり）を記述する
<pre>
.
├─ docker-compose.yml
├─ README.md
│
└─db
    ├─ entrypoint.sh
    ├─ init.sql
    └─ wait-for-sqlserver.sh
</pre>

## 実行方法

```
$ docker-compose up -d
```

## 動作確認

以下のコマンドを実行して、ログを表示し、しばし待つ（10秒程度）
```
$ docker-compose logs -f db
```

以下のようなメッセージが表示されればOK
```
|    ************************    |
|    MS SQL SERVER IS RUNNING    |
|    ************************    |
```

あとは`docker-compose.yml`に記述してある`SA_PASSWORD`のパスワードでログインしてよしなに。