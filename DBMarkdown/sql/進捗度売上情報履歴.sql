CREATE TABLE [dbo].[sh_t_progress_sales_info_history] (
  [project_number] nvarchar(255) not null
  , [order_number] nvarchar(255) not null
  , [detail_number] nvarchar(255) not null
  , [department_cd] nvarchar(100) not null
  , [history_number] int IDENTITY(1,1) not null
  , [main_department_cd] nvarchar(100) default NULL
  , [year] int default NULL
  , [month] int default NULL
  , [overall_progress] nvarchar(3) default NULL
  , [progress_manhour] nvarchar(3) default NULL
  , [progress_cost_outsourcing] nvarchar(3) default NULL
  , [sales_adjusted_change_flag] nvarchar(1) default 0
  , [sales_adjusted_value] numeric(12, 0) default NULL
  , [progress_sales_theory] nvarchar(3) default NULL
  , [progress_sales_report] nvarchar(3) default NULL
  , [sales_amount] numeric(12, 0) default NULL
  , [end_flag] nvarchar(1) default 0
  , [comment] nvarchar(1000) default NULL
  , [create_user_cd] nvarchar(10) default NULL
  , [create_date] datetime2 default NULL
  , [record_user_cd] nvarchar(10) default NULL
  , [record_date] datetime2 default NULL
  , [delete_flag] nvarchar(1) default 0
  , primary key (project_number,order_number,detail_number,department_cd,history_number)
)
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'進捗度売上情報履歴',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'PRNo.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'project_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'order_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'明細No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'detail_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'部署コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'履歴番号',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'history_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'主担当部署コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'main_department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'年',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'year'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'月',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'month'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'全体進捗度',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'overall_progress'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'工数進捗度',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'progress_manhour'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'外注費進捗度',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'progress_cost_outsourcing'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上調有無',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'sales_adjusted_change_flag'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上調整値',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'sales_adjusted_value'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'進捗度売上（理論値）',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'progress_sales_theory'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'進捗度売上（報告値)',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'progress_sales_report'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上金額',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'sales_amount'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'終了フラグ',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'end_flag'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'コメント',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'comment'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'create_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'create_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'record_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'record_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'削除フラグ',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info_history',@level2type=N'COLUMN',@level2name=N'delete_flag'
