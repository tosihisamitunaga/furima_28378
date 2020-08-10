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
｜birthday        | date  | null: false |
### Association

- has_many :item_purchases
- has_many :items, through: item purchases


## item_purchases 

| Column   | Type    | Options     |
| -------- | ------  | ----------- |
| user_id  | integer | null: false |
| item_id  | integer | null: false |

### Association
- belongs_to :user
- belongs_to :item
- belongs_to :delivary_address

## items テーブル

| Column             | Type   | Options      |
| --------           | ------ | -----------  |
| price              | integer| null: false  |
| exhibior           | string | null: false  |
| item_image         | string | null: false  |
| product_name       | string | null: false  |
| delivery fee       | string | null: false  |
| shipping data      |string  | null: false  |
| coments            | string | null: false  |
| ship-from          | string | null: false  |
### Association
 - has_many :item_purchases
 - belongs_to :user, thtough: item purchases
 


## delivary_address テーブル

| Column            | Type   | Options     |
| -------------     | ------ | ----------- |
| postsl code       | string | null: false |
| municipalities    | string | null: false |
| address           | string | null: false |
| building name     | string |             |
| tell              | string | null: false |


### Association
 - belongs_to item purchases
