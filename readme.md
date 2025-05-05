
# Readme

## dockerの設定情報(compose.yml)

docker-compose.ymlに記載しています。

## dockerのコンテナ生成
```
docker compose up -d
```

## dockerのステータス確認
```
docker ps
```

上記コマンド実行後、下記のように表示され、sample-postgres-dbのコンテナが作成される。
```
CONTAINER ID   IMAGE             COMMAND                   CREATED          STATUS          PORTS                    NAMES
af7cfc39d308   postgres:latest   "docker-entrypoint.s…"   37 seconds ago   Up 35 seconds   0.0.0.0:5432->5432/tcp   sample-postgres-db
```
## postgresへの接続
接続先の情報は下記の通り

- Database: `sample_db`
- User: `postgres`
- Password: `postgres`

## 初期データ
`postgres\init\init.sql` でDatabaseおよび作成するテーブル情報を管理しています。

## 削除
dockerのステータス確認で表示されたコンテナの情報でCONTAINER IDを確認し使用する

■例
```
docker rm af7cfc39d308
```

