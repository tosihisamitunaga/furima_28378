# README

# テーブル設計

## users テーブル

| Column         |  Type   | Options    |
| --------       | ------ | ----------- |
| nickname       | string | null: false |
| email          | string | null: false |
| password       | string | null: false |
| first_name     |string  | null: false |
| family_name    | string | null: false |
| first_name kana| string | null: false |
| family_name kana| string| null: false |
### Association

- has_many :items
- has_many :items, through: item transaction


## item_purchases テーブル

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

| Column            | Type   | Options     |
| -------------     | ------ | ----------- |
| street_address    | string | null: false |
| item_image        | string | null: false |
| product_name      | string | null: false |
| delivery fee      | string | null: false |
| day until shipping|string  | null: false |

### Association
 - belongs_to item transaction
