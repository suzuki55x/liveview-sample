# LiveviewSample

Phoenix LiveView を試してみる。  

ROG Strix Scar 15 (2021) の環境構築テストもかねてWindows環境。

## 前提

- Elixir v1.11.3
- Phoenix v1.5.7
- PostgreSQL v13.2-1

## やったこと

### プロジェクト作成

```shell
mix phx.new liveview_sample --live
```

DB初期化 & 動作確認  
(PostgreSQL起動していることを確認)

```shell
cd liveview_sample
mix ecto.create
iex -S mix phx.server
```

## 認証機能のため、phx_gen_authを追加

`mix.exs`のdepsに追記

```elixir
{:phx_gen_auth, "~> 0.5", only: [:dev], runtime: false}
```

```shell
mix do deps.get, deps.compile
```

認証機能とユーザテーブルの追加

```shell
mix phx.gen.auth Users User users
mix ecto.migrate
```

phx.gen.authの引数

> Users-> Context CRUDのSQL的処理やSQLクエリを記述  
> User -> schema  データ構造やリレーション、バリデーションなど作成・変更時の処理を記述  
> users -> DBのテーブル名

サーバを再起動

```shell
iex -S mix phx.server
```

`localhost:4000`にアクセスして、右上に登録・ログインが追加されていることを確認
