CREATE TABLE [dbo].[sh_t_plans_production_costs_saved] (
  [project_number] nvarchar(255) not null
  , [order_number] nvarchar(255) not null
  , [detail_number] nvarchar(255) not null
  , [department_cd] nvarchar(100) not null
  , [order_amount] int default NULL
  , [expected_days_total] decimal(5,2) default NULL
  , [plans_produnction_costs] decimal(5,2) default NULL
  , [outsourcing_cost_flag] nvarchar(1) default 0
  , [plans_outsourcing_cost] int default NULL
  , [plans_outsourcing_cost_sales] int default NULL
  , [comment] nvarchar(2000) default NULL
  , [create_user_cd] nvarchar(10) default NULL
  , [create_date] datetime2 default NULL
  , [record_user_cd] nvarchar(10) default NULL
  , [record_date] datetime2 default NULL
  , [divide_flag] nvarchar(1) default 0
  , [delete_flag] nvarchar(1) default 0
  , primary key (project_number,order_number,detail_number,department_cd)
  , foreign key (project_number,order_number,detail_number,department_cd) REFERENCES sh_t_order_department_details(project_number,order_number,detail_number,department_cd)
)
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'予定工数一時保存',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'PRNo.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'project_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'受注No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'order_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'明細No.',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'detail_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'部署ID',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'department_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'分割受注金額一時保存',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'order_amount'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'予定工数(按分前)',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'expected_days_total'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'予定工数',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'plans_produnction_costs'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'外注費有無:0なし、1あり',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'outsourcing_cost_flag'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'予定外注費',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'plans_outsourcing_cost'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'予定外注費売上',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'plans_outsourcing_cost_sales'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'コメント',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'comment'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'create_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'create_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'record_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'record_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'按分フラグ:0按分なし、1按分あり',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'divide_flag'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'削除フラグ:1未削除、2削除済',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_plans_production_costs_saved',@level2type=N'COLUMN',@level2name=N'delete_flag'
