# README

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