CREATE TABLE [dbo].[sh_t_progress_sales_info] (
  [project_number] nvarchar(255) not null
  , [order_number] nvarchar(255) not null
  , [detail_number] nvarchar(255) not null
  , [department_cd] nvarchar(100) not null
  , [main_department_cd] nvarchar(100) default NULL
  , [year] int default NULL
  , [month] int default NULL
  , [overall_progress] decimal(5,2) default NULL
  , [progress_manhour] decimal(5,2) default NULL
  , [progress_cost_outsourcing] decimal(5,2) default NULL
  , [sales_adjusted_change_flag] nvarchar(1) default NULL
  , [sales_adjusted_value] int default NULL
  , [progress_sales_theory] int default NULL
  , [progress_sales_report] int default NULL
  , [sales_confirmed_amount] int default 0
  , [end_flag] nvarchar(1) default 0
  , [comment] nvarchar(2000) default NULL
  , [order_status_cd] nvarchar(10) default NULL
  , [order_status_name] nvarchar(10) default NULL
  , [create_user_cd] nvarchar(10) default NULL
  , [create_date] datetime2 default NULL
  , [record_user_cd] nvarchar(10) default NULL
  , [record_date] datetime2 default NULL
  , [delete_flag] nvarchar(1) default 0
  , primary key (project_number,order_number,detail_number,department_cd,year,month)
  , foreign key (project_number,order_number,detail_number,department_cd) REFERENCES sh_t_order_department_details(project_number,order_number,detail_number,department_cd)
)
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'進捗度売上情報',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'PRNo.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'project_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'order_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'明細No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'detail_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'部署ID',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'主担当部署ID',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'main_department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'年',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'year'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'月',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'month'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'全体進捗度',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'overall_progress'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'工数進捗度',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'progress_manhour'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'外注費進捗度',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'progress_cost_outsourcing'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上調整有無:0なし、1あり',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'sales_adjusted_change_flag'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上調整値',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'sales_adjusted_value'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'進捗度売上（理論値）',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'progress_sales_theory'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'進捗度売上（報告値)',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'progress_sales_report'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'売上確定済金額',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'sales_confirmed_amount'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'終了フラグ:0未終了、1進捗度100%で終了、2進捗度関係なく終了',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'end_flag'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'コメント',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'comment'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注ステータスコード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'order_status_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注名ステータス',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'order_status_name'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'create_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'create_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'record_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'record_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'削除フラグ:0未削除、1削除済',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_progress_sales_info',@level2type=N'COLUMN',@level2name=N'delete_flag'
