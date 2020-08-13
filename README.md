# README

 テーブル設計

 users テーブル

| Column         |  Type   | Options    |
| --------       | ------ | ----------- |
| nickname       | string | null: false |
| email          | string | null: false |
| password       | string | null: false |
| first_name     |string  | null: false |
| family_name    | string | null: false |
| first_name_kana| string | null: false |
| family_name_kana| string| null: false |
｜birthday        | date  | null: false |
 Association

- has_many :item_purchases
- has_many :items, through: item_purchases


 item_purchases 

| Column   | Type    | Options           |
| -------- | ------  | -----------       |
| user_id  | integer | foreign_key :true |
| item_id  | integer | foreign_key :true |

 Association
- belongs_to :user
- belongs_to :item
- belongs_to :delivary_address

 items テーブル

| Column             | Type   | Options      |
| --------           | ------ | -----------  |
| price              | integer| null: false  |
| image              | string | null: false  |
| product_name       | string | null: false  |
| delivery_fee       | integer| null: false  |
| shipping_data      |integer | null: false  |
| coments            | text   | null: false  |
| ship_from          | integer| null: false  |
|categori            | integer|              |
| user_id            |integer |foreign_key :true |
| product_status     |string  | nill: false  |

 Association
 - has_many :item_purchases
 - belongs_to :user, thtough: item_purchases
 


 delivary_address テーブル

| Column            | Type   | Options     |
| -------------     | ------ | ----------- |
| postsl_code       | string | null: false |
| municipalities    | string | null: false |
| address           | string | null: false |
| building_name     | string |             |
| tell              | string | null: false |
| prefectures      | integer|              |

 Association
 - belongs_to item_purchases
