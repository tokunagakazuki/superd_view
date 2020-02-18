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
- AWS(EC2, RDS for MySQL, S3, VPC, Route53, ALB, ACM)

#### フロント

- HAML
- SCSS
- bootstarap
- JQuery

## 機能一覧

- CircleCI
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
<img width="1133" alt="スクリーンショット 2020-02-19 0 48 04" src="https://user-images.githubusercontent.com/56038993/74752152-99b9c880-52b1-11ea-8162-28e582e2ea39.png">

## アプリイメージ
<img width="1680" alt="スクリーンショット 2020-02-19 0 58 32" src="https://user-images.githubusercontent.com/56038993/74753162-11d4be00-52b3-11ea-9d6d-9496d6669d3e.png">
<img width="1668" alt="スクリーンショット 2020-02-19 0 58 15" src="https://user-images.githubusercontent.com/56038993/74753128-02ee0b80-52b3-11ea-8245-80e0d76666cb.png">

