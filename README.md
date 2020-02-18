# Superd view
全国の絶景を世界地図に投稿できるアプリです

## Link
https://app.superdview.com/

## Tools
- Ruby 2.5.2
- Rails 5.2.3
- Docker
- Nginx
- JQuery
- AWS(EC2, S3, RDS for MySQL, VPC, Route53, ALB, ACM)
バックエンド

## 使用技術

#### バックエンド

- Ruby 2.6.0
- Rails 5.2.3
- Docker
- Nginx
- Rspec
- CircleCI
- Capistrano
- AWS(EC2, RDS for MySQL, S3, VPC, Route53, ALB, ACM)

#### フロント

- HAML
- SCSS
- bootstarap
- JQuery

## 機能一覧

- CircleCI と Capistrano を用いた CI 機能
- Rspec による自動テスト機能
- ユーザー登録・ログイン機能（devise を使用）
- 投稿機能(画像のアップロードに CarrierWave を使用)
- 位置情報投稿機能(Google Maps API/Geocoding API)
- 投稿一覧・投稿詳細表示機能
- タグ機能(acts-as-taggable-on)
- 投稿編集機能(編集,削除)
- ページネーション機能（Kaminari）
- いいね機能
- フォロー機能
- 検索機能(非同期通信)

### アーキテクチャ図


## アプリイメージ


