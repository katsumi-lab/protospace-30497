# README

## usersテーブル

| Column    | Type    | Options                       |
| --------- | ------- | ------------------------------|
| email     | string | null: false, foreign_key: true |
| password  | string | null: false, foreign_key: true |
| name      | string | null: false, foreign_key: true |
| profile   |  text  | null: false, foreign_key: true |
| occupation|  text  | null: false, foreign_key: true |
| position  |  text  | null: false, foreign_key: true |

### Association
- has_many :prototype
- has_many :comments


## prototypeテーブル

| Column     | Type         | Options                        |
| ---------  | ----------   | ------------------------------ |
| title      | string       | null: false, foreign_key: true |
| catch_copy | text         | null: false, foreign_key: true |
| concept    | text         | null: false, foreign_key: true |
| image      | string       | null: false, foreign_key: true |
| user       |  references  | null: false, foreign_key: true |

### Association
- belongs_to :users
- has_many :comments



## prototypeテーブル

| Column    | Type         | Options                        |
| --------- | ----------   | ------------------------------ |
| text      | text         | null: false, foreign_key: true |
| user      | references   | null: false, foreign_key: true |
| prototype | references   | null: false, foreign_key: true |


### Association
- belongs_to :users
- belongs_to :prototype