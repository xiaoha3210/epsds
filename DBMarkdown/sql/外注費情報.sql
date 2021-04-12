CREATE TABLE [dbo].[sh_t_outsourcing_cost_info] (
  [project_number] nvarchar(255) not null
  , [order_number] nvarchar(255) not null
  , [detail_number] nvarchar(255) not null
  , [department_cd] nvarchar(255) not null
  , [year] int not null
  , [month] int not null
  , [outsourcing_cost] int default NULL
  , [create_user_cd] nvarchar(10) default NULL
  , [create_date] datetime2 default NULL
  , [record_user_cd] nvarchar(10) default NULL
  , [record_date] datetime2 default NULL
  , [delete_flag] nvarchar(1) default 0
  , primary key (project_number,order_number,detail_number,department_cd,year,month)
)
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'外注費情報',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'PRNo.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'project_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'order_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'明細No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'detail_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'部署ID',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'年',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'year'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'月',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'month'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'外注費',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'outsourcing_cost'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'create_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'create_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'record_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'record_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'削除フラグ',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_outsourcing_cost_info',@level2type=N'COLUMN',@level2name=N'delete_flag'
