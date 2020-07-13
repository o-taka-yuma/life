# README

## アプリ名 LIFE


### App URL
https://life-9522.herokuapp.com/

## テストアカウント 
- test@gmail.com
- パスワード【33333333】

### 概要
- 行動記録管理アプリ。日々の記録を24時間単位で記録、統計平均データを表示する。
- 新規登録した後、1日ごとに記録ボタンで記録すると円グラフと％で平均行動が表示される。自身の行動を記録して客観視する事で自己を顧みる。継続するのが苦手な人が日々どれぐらいの割合で何をしているかを確認できる。

### 扱い方
- 記録するボタンを押します.

![life画像](https://user-images.githubusercontent.com/64815738/87266525-77467700-c500-11ea-9d45-8e911c8b93fe.jpg)


- 時間を入力、コメントを書き込んで記録します。

![5ec027a69f338cca423141b56384973c](https://user-images.githubusercontent.com/64815738/87266722-ea4fed80-c500-11ea-94ce-fab992058cab.gif)


- その後記録が画面に表示されます。右図と％は全ての記録の平均値が出ています。


### 工夫したポイント
- 簡単に扱える事。複雑なことは一切無い。続けるのがイヤになるような面倒な機能はつけていない。

### 使用技術
- HTML・CSS(sass)・Ruby(2.5.1)・
### DB
- 開発環境:MySQL・本番環境：ClearDB

### デプロイ
- heroku

### 制作背景
- コンスタントに続ける事ができなくて、継続する習慣を身に付けるために考えたアプリケーションです。手軽に続ける事ができる、面倒でないを意識して制作しています。

## 今後の実装、課題
- 記録日数や記録した行動を元にしたレベル機能の実装。使いやすいUIと親しみやすいデザインでのアプリ公開



## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true, unique: true|
|email|string|null:false, index:true, unique: true|
|encrypted_password|string|null: false|
|reset_password_token|string||
|reset_password_sent_at|datetime||
|remember_created_at|datetime||

### Association
- has_many :action_records
- has_one :target

## action_recordテーブル
|Column|Type|Options|
|------|----|-------|
|recordDay|date|null: false|
|sleep|integer|null: false|
|work|integer|null: false|
|takeBreak|integer|null: false|
|effort|integer|null: false|
|challenge|integer|null: false|
|chores|integer|null: false|
|total|integer|null: false|
|comment|text||
|user|reference|foreign_key: true|

## targetsテーブル
|Column|Type|Options|
|------|----|-------|
|life_goal|text||
|dream|text||
|achivement_target|text||
|user|reference|foreign_key: true|

### Association
- belongs_to :user