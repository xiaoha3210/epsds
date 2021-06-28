CREATE TABLE [dbo].[sh_t_order_department_details] (
  [project_number] nvarchar(255) not null
  , [order_number] nvarchar(255) not null
  , [detail_number] nvarchar(255) default NULL
  , [department_cd] nvarchar(100) default NULL
  , [main_department_cd] nvarchar(100) default NULL
  , [order_amount] int default NULL
  , [sales_confirmed_amount] int default 0
  , [progress_sales_status_cd] nvarchar(2) default NULL
  , [progress_plans_status_cd] nvarchar(2) default NULL
  , [charge_division_cd] nvarchar(2) default 0  
  , [create_user_cd] nvarchar(10) default NULL
  , [create_date] datetime2 default NULL
  , [record_user_cd] nvarchar(10) default NULL
  , [record_date] datetime2 default NULL
  , [delete_flag] nvarchar(1) default 0
  , primary key (project_number,order_number,detail_number,department_cd)
  , foreign key (project_number,order_number,detail_number) REFERENCES sh_t_order_details(project_number,order_number,detail_number)
)
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注明細部署情報',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'PRNo.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'project_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'order_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'明細No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'detail_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'部署ID',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'主担当部署ID',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'main_department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'分割受注金額或いは受注金額',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'order_amount'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上確定済金額',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'sales_confirmed_amount'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'進捗ステータスコード（売上）:0ブラック、1売上未入力、2売上未入力（実績無し）、3売上入力中、4売上確定済、5売上最終確定済、6売上連携済、7全売上終了',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'progress_sales_status_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'進捗ステータスコード（予定工数）:1予定工数未入力、2予定工数入力中、3予定工数確定済、4予定工数最終確定済',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'progress_plans_status_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'担当課コード:0なし、1課、2課、3課、4課、5課、6課、7課、8課、9課、10課',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'charge_division_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'create_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'create_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'record_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'record_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'削除フラグ:0未削除、1削除済',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_department_details',@level2type=N'COLUMN',@level2name=N'delete_flag'
