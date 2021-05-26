CREATE TABLE [dbo].[sh_t_order_details] (
  [project_number] nvarchar(255) not null
  , [order_number] nvarchar(255) not null
  , [sales_department_cd] nvarchar(100) default NULL
  , [detail_number] nvarchar(255) default NULL
  , [details] nvarchar(1000) default NULL
  , [order_amount_before_apportionment] int default NULL
  , [expected_days_total] decimal(5,2) default NULL
  , [create_user_cd] nvarchar(10) default NULL
  , [create_date] datetime2 default NULL
  , [record_user_cd] nvarchar(10) default NULL
  , [record_date] datetime2 default NULL
  , [delete_flag] nvarchar(1) default 0
  , [divide_flag] nvarchar(1) default NULL
  , primary key (project_number,order_number,detail_number)
  , foreign key (project_number,order_number) REFERENCES sh_t_order_list(project_number,order_number)
)
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注明細情報',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'PRNo.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'project_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'order_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上部署ID',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'sales_department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'明細No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'detail_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'明細内容',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'details'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注金額(按分前)',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'order_amount_before_apportionment'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'予定工数(按分前)',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'expected_days_total'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'create_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'create_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'record_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'record_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'削除フラグ:0未削除、1削除済',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'delete_flag'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'按分フラグ:0按分なし、1按分あり',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_details',@level2type=N'COLUMN',@level2name=N'divide_flag'
