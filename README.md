# SUPERD VIEW
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
<img width="1680" alt="スクリーンショット 2020-02-19 1 03 36" src="https://user-images.githubusercontent.com/56038993/74753737-e7cfcb80-52b3-11ea-88bc-d84bae9ba137.png">
<img width="1680" alt="スクリーンショット 2020-02-19 1 03 46" src="https://user-images.githubusercontent.com/56038993/74753749-ebfbe900-52b3-11ea-833f-57cb73097ec8.png">

