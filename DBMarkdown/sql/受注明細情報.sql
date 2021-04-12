CREATE TABLE [dbo].[sh_t_order_details] (
  [project_number] nvarchar(255) not null
  , [order_number] nvarchar(255) not null
  , [detail_number] nvarchar(255) default NULL
  , [department_cd] nvarchar(100) default NULL
  , [main_department_cd] nvarchar(100) default NULL
  , [details] nvarchar(1000) default NULL
  , [order_amount] decimal(12,0) default NULL
  , [sales_confirmed_amount] numeric(12, 0) default NULL
  , [progress_cost_flag] nvarchar(1) default 0
  , [progress_sales_status_cd] nvarchar(2) default NULL
  , [progress_plans_status_cd] nvarchar(2) default NULL
  , [create_user_cd] nvarchar(10) default NULL
  , [create_date] datetime2 default NULL
  , [record_user_cd] nvarchar(10) default NULL
  , [record_date] datetime2 default NULL
  , [delete_flag] nvarchar(1) default 0
  , primary key (project_number,order_number)
)
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注明細情報',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'PRNo.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'project_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'order_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'明細No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'detail_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'部署コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'主担当部署コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'main_department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'明細内容',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'details'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注金額',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'order_amount'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上確定済金額',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'sales_confirmed_amount'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'外注費有無',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'progress_cost_flag'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'進捗ステータスコード（売上）',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'progress_sales_status_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'進捗ステータスコード（予定工数）',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'progress_plans_status_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'create_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'create_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'record_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'record_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'削除フラグ',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'delete_flag'
