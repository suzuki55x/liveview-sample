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
