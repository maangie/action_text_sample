# Action Text サンプルアプリ

[![CI ステータス](https://github.com/maangie/action_text_sample/actions/workflows/ci.yml/badge.svg)](https://github.com/maangie/action_text_sample/actions/workflows/ci.yml)

## 1. アプリの概要

このアプリは、Rails 8.1.3 と Ruby 4.0.2 で構築された Action Text のサンプルアプリです。`Message` モデルに `has_rich_text :content` を設定しており、Trix エディタを使ってリッチテキストを作成・編集できます。

`Message` に対して一覧、詳細、新規作成、編集、削除の CRUD 機能を備えており、Tailwind CSS で画面をスタイリングしています。JavaScript の管理には `importmap-rails` を使用し、データベースには SQLite3 を採用しています。

## 2. 技術スタック

| 項目 | 内容 |
| --- | --- |
| Ruby | 4.0.2 |
| Rails | 8.1.3 |
| データベース | SQLite3 |
| リッチテキスト | Action Text, Trix |
| フロントエンド | Tailwind CSS |
| JavaScript 管理 | importmap-rails |
| 主要 gem | `rails`, `sqlite3`, `importmap-rails`, `tailwindcss-rails`, `turbo-rails`, `stimulus-rails`, `jbuilder`, `image_processing`, `puma`, `propshaft` |

## 3. セットアップ手順

以下の手順でローカル環境を起動できます。

```bash
git clone https://github.com/maangie/action_text_sample.git
cd action_text_sample
bundle install
bin/rails db:prepare
bin/dev
```

`bin/dev` では Rails サーバーと Tailwind CSS の監視プロセスが起動します。起動後はブラウザで `http://localhost:3000` にアクセスしてください。

## 4. テストの実行方法

テストは以下のコマンドで実行できます。

```bash
bin/rails test
```

必要に応じて、テスト環境のデータベース準備を先に行ってください。

```bash
RAILS_ENV=test bin/rails db:prepare
```

## 5. CI バッジ（GitHub Actions）

このリポジトリでは GitHub Actions による CI が設定されており、`main` ブランチへの push と pull request を契機にテストが実行されます。

- バッジ URL: `https://github.com/maangie/action_text_sample/actions/workflows/ci.yml/badge.svg`
- ワークフロー URL: `https://github.com/maangie/action_text_sample/actions/workflows/ci.yml`
