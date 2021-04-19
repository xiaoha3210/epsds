CREATE TABLE [dbo].[sh_t_salses_saved] (
  [project_number] nvarchar(255) not null
  , [order_number] nvarchar(255) not null
  , [detail_number] nvarchar(255) not null
  , [department_cd] nvarchar(255) not null
  , [sales_adjusted_change_flag] nvarchar(1) default 0
  , [sales_adjusted_value] numeric(12, 0) default NULL
  , [end_flag] nvarchar(1) default 0
  , [comment] nvarchar(1000) default NULL
  , [create_user_cd] nvarchar(10) default NULL
  , [create_date] datetime2 default NULL
  , [record_user_cd] nvarchar(10) default NULL
  , [record_date] datetime2 default NULL
  , [delete_flag] nvarchar(1) default 0
  , primary key (project_number,order_number,detail_number,department_cd)
  , foreign key (project_number,order_number,detail_number,department_cd) REFERENCES sh_t_order_details (project_number,order_number,detail_number,department_cd)
)
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上確定一時保存',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'PRNo.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'project_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'order_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'明細No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'detail_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'部署コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上調有無:0なし、1あり',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'sales_adjusted_change_flag'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上調整値',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'sales_adjusted_value'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'終了フラグ:0未終了、1進捗度100%で終了、2進捗度関係なく終了',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'end_flag'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'コメント',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'comment'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'create_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'create_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'record_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'record_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'削除フラグ:0未削除、1削除済',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_salses_saved',@level2type=N'COLUMN',@level2name=N'delete_flag'
