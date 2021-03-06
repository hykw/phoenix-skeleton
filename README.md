# phoenix-skeleton
Phoenix で新規プロジェクトを作成した時の初期設定手順

全てのプロジェクトで共通の設定手順を記載しています。


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

# DB設定反映
- config/dev.exs
- config/test.exs

```bash
$ mix test
```

# エラーメッセージの日本語化

- localeファイル(https://github.com/hykw/phoenix-locale_ja)をセット

```bash
$ mkdir -p priv/gettext/ja/LC_MESSAGES
$ wget https://raw.githubusercontent.com/hykw/phoenix-locale_ja/master/ja/LC_MESSAGES/errors.po
$ mv errors.po priv/gettext/ja/LC_MESSAGES/
```

- config/config.exs にロケールセット


# ログのファイル出力

- .gitignore
- config/config.exs
- config/dev.exs
- mix.exs
- lib/skeleton/endpoint.ex
- web/plugs/logger.ex

```bash
$ mix deps.get
```

# 秘密情報が書かれた config ファイルを読み込み

- .gitignore
- config/dev.exs

```bash
$ mkdir -p config/secrets
$ echo "use Mix.Config" > config/secrets/dev.secrets.exs
```


