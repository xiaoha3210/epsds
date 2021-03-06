# sh_t_progress_sales_info

## Description

進捗度売上情報

## Columns

| Name | Type | Default | Nullable | Children | Parents | Comment |
| ---- | ---- | ------- | -------- | -------- | ------- | ------- |
| project_number | nvarchar(255) |  | false |  |  | PRNo. |
| order_number | nvarchar(255) |  | false |  |  | 受注No. |
| detail_number | nvarchar(255) |  | false |  |  | 明細No. |
| department_cd | nvarchar(100) |  | false |  |  | 部署ID |
| main_department_cd | nvarchar(100) | (NULL) | true |  |  | 主担当部署ID |
| year | int | (NULL) | false |  |  | 年 |
| month | int | (NULL) | false |  |  | 月 |
| overall_progress | decimal | (NULL) | true |  |  | 全体進捗度 |
| progress_manhour | decimal | (NULL) | true |  |  | 工数進捗度 |
| progress_cost_outsourcing | decimal | (NULL) | true |  |  | 外注費進捗度 |
| sales_adjusted_change_flag | nvarchar(1) | (NULL) | true |  |  | 売上調整有無:0なし、1あり |
| sales_adjusted_value | int | (NULL) | true |  |  | 売上調整値 |
| progress_sales_theory | int | (NULL) | true |  |  | 進捗度売上（理論値） |
| progress_sales_report | int | (NULL) | true |  |  | 進捗度売上（報告値) |
| sales_confirmed_amount | int | ((0)) | true |  |  | 売上確定済金額 |
| end_flag | nvarchar(1) | ((3)) | true |  |  | 終了フラグ:0未終了、1進捗度100%で終了、2進捗度関係なく終了、3未選択 |
| comment | nvarchar(2000) | (NULL) | true |  |  | コメント |
| order_status_cd | nvarchar(10) | (NULL) | true |  |  | 受注ステータスコード |
| order_status_name | nvarchar(10) | (NULL) | true |  |  | 受注名ステータス |
| create_user_cd | nvarchar(10) | (NULL) | true |  |  | 作成者コード |
| create_date | datetime2 | (NULL) | true |  |  | 作成日時 |
| record_user_cd | nvarchar(10) | (NULL) | true |  |  | 更新者コード |
| record_date | datetime2 | (NULL) | true |  |  | 更新日時 |
| delete_flag | nvarchar(1) | ((0)) | true |  |  | 削除フラグ:0未削除、1削除済 |

## Constraints

| Name | Type | Definition |
| ---- | ---- | ---------- |
| PK__sh_t_pro_* | PRIMARY KEY | CLUSTERED, unique, part of a PRIMARY KEY constraint, [ project_number, order_number, detail_number, department_cd, year, month ] |

## Indexes

| Name | Definition |
| ---- | ---------- |
| PK__sh_t_pro_* | CLUSTERED, unique, part of a PRIMARY KEY constraint, [ project_number, order_number, detail_number, department_cd, year, month ] |

## Relations

![er](sh_t_progress_sales_info.svg)

---

> Generated by [tbls](https://github.com/k1LoW/tbls)
