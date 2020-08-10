# README

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :items
- has_many :items, through: item transaction


## items transaction テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| user_id  | string | null: false |
| item_id  | string | null: false |

### Association
- belongs_to :users
- belongs_to :items
- belongs_to :delivary_address

## items テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| kategori | string | null: false |
| price    | integer| null: false |
| product  | string | null: false |
| exhibior | string | null: false |
| image    | string | null: false |

### Association
 - has_many :items transaction
 - has_many :users, thtough: item transaction
 


## delivary_address テーブル

| Column         | Type   | Options     |
| -------------  | ------ | ----------- |
| street_address | string | null: false |

### Association
 - belongs_to item transaction
