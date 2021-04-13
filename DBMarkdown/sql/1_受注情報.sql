CREATE TABLE [dbo].[sh_t_order_list] (
  [project_number] nvarchar(255) not null
  , [order_number] nvarchar(255) not null
  , [main_department_cd] nvarchar(100) default NULL
  , [project_name] nvarchar(1000) default NULL
  , [order_name] nvarchar(1000) default NULL
  , [order_status] nvarchar(10) default NULL
  , [department_cd] nvarchar(100) default NULL
  , [start_year] int default NULL
  , [start_month] int default NULL
  , [end_year] int default NULL
  , [end_month] int default NULL
  , [create_user_cd] nvarchar(10) default NULL
  , [create_date] datetime2 default NULL
  , [record_user_cd] nvarchar(10) default NULL
  , [record_date] datetime2 default NULL
  , [delete_flag] nvarchar(1) default 0
  , primary key (project_number,order_number)
)
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注情報',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'PRNo.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'project_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'order_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'主担当部署コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'main_department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'試験名',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'project_name'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注名',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'order_name'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注ステータスコード:1仮受注、2本受注、3受注終了',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'order_status'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'部署コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'開始年',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'start_year'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'開始月',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'start_month'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'終了年',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'end_year'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'終了月',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'end_month'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'create_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'create_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'record_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'record_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'削除フラグ:0未削除、1削除済',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_order_list',@level2type=N'COLUMN',@level2name=N'delete_flag'
