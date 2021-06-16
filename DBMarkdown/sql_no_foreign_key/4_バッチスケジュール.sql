CREATE TABLE [dbo].[sh_t_batch_schedule] (
  [batch_cd] nvarchar(10) not null
  , [year] int not null
  , [month] int not null
  , [day] int not null
  , [time] nvarchar(5) not null
  , [create_user_cd] nvarchar(10) default NULL
  , [create_date] datetime2 default NULL
  , [record_user_cd] nvarchar(10) default NULL
  , [record_date] datetime2 default NULL
  , [delete_flag] nvarchar(1) default 0
  , primary key (batch_cd,year,month,day,time)
)
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'バッチスケジュール',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_batch_schedule'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'バッチCD',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_batch_schedule',@level2type=N'COLUMN',@level2name=N'batch_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'実行年',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_batch_schedule',@level2type=N'COLUMN',@level2name=N'year'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'実行月',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_batch_schedule',@level2type=N'COLUMN',@level2name=N'month'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'実行日',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_batch_schedule',@level2type=N'COLUMN',@level2name=N'day'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'実行時間',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_batch_schedule',@level2type=N'COLUMN',@level2name=N'time'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_batch_schedule',@level2type=N'COLUMN',@level2name=N'create_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_batch_schedule',@level2type=N'COLUMN',@level2name=N'create_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_batch_schedule',@level2type=N'COLUMN',@level2name=N'record_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_batch_schedule',@level2type=N'COLUMN',@level2name=N'record_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'削除フラグ:0未削除、1削除済',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_batch_schedule',@level2type=N'COLUMN',@level2name=N'delete_flag'
