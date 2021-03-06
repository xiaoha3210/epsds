# sh_t_order_list

## Description

受注情報

## Columns

| Name | Type | Default | Nullable | Children | Parents | Comment |
| ---- | ---- | ------- | -------- | -------- | ------- | ------- |
| project_number | nvarchar(255) |  | false |  |  | PRNo. |
| order_number | nvarchar(255) |  | false |  |  | 受注No. |
| main_department_cd | nvarchar(100) | (NULL) | true |  |  | 主担当部署ID |
| project_name | nvarchar(1000) | (NULL) | true |  |  | 試験名 |
| project_short_name | nvarchar(1000) | (NULL) | true |  |  | 試験名略称 |
| order_name | nvarchar(1000) | (NULL) | true |  |  | 受注名 |
| order_status_cd | nvarchar(10) | (NULL) | true |  |  | 受注ステータスコード |
| order_status_name | nvarchar(10) | (NULL) | true |  |  | 受注名ステータス |
| contract_cd | nvarchar(10) | (NULL) | true |  |  | 契約先コード |
| create_user_cd | nvarchar(10) | (NULL) | true |  |  | 作成者コード |
| create_date | datetime2 | (NULL) | true |  |  | 作成日時 |
| record_user_cd | nvarchar(10) | (NULL) | true |  |  | 更新者コード |
| record_date | datetime2 | (NULL) | true |  |  | 更新日時 |
| delete_flag | nvarchar(1) | ((0)) | true |  |  | 削除フラグ:0未削除、1削除済 |

## Constraints

| Name | Type | Definition |
| ---- | ---- | ---------- |
| PK__sh_t_ord_* | PRIMARY KEY | CLUSTERED, unique, part of a PRIMARY KEY constraint, [ project_number, order_number ] |

## Indexes

| Name | Definition |
| ---- | ---------- |
| PK__sh_t_ord_* | CLUSTERED, unique, part of a PRIMARY KEY constraint, [ project_number, order_number ] |

## Relations

![er](sh_t_order_list.svg)

---

> Generated by [tbls](https://github.com/k1LoW/tbls)
