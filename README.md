# phoenix-skeleton
Phoenix で新規プロジェクトを作成した時の初期設定手順

全てのプロジェクトで共通的に設定するとこの設定手順を記載しています。

# 前準備
## MySQLの準備
```
$ mysql -u root  -h127.0.0.1 -p

create database phoenix_skeleton;
grant all privileges on phoenix_skeleton.* TO "testuser"@"localhost" identified by "testpass";
flush privileges;
```

# Phoenix のインストール

```bash
$ mix archive.install https://github.com/phoenixframework/phoenix/releases/download/v1.1.2/phoenix_new-1.1.2.ez
$ mix phoenix.new skeleton --no-brunch --database mysql
```

