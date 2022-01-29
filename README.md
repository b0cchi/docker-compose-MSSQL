# MS SQL docker-compose Sample

MSSQL Serverの開発環境をdocker-composeで立てるためのサンプル

## 下準備
`db/init/`にSQL Server起動後に実行したいクエリ（テストデータをInsertしたり）を`.sql`のファイル拡張子で配置する。  
`clone`後に何も変更せず実行すると`00_create_tables.sql`と`01_insert_data.sql`が実行される。
<pre>
.
├─ docker-compose.yml
├─ README.md
│
└─db
    ├─ entrypoint.sh
    ├─ init
    │   ├─ 00_create_tables.sql
    │   └─ 01_insert_data.sql
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