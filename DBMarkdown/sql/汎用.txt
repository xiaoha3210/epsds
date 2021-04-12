CREATE TABLE [dbo].[sh_t_general_purpose] (
  [page_number] nvarchar(255) not null
  , [item_number] nvarchar(4) not null
  , [item_name] nvarchar(1000) default NULL
  , [item_description] nvarchar(1000) default NULL
  , [create_user_cd] nvarchar(10) default NULL
  , [create_date] datetime2 default NULL
  , [record_user_cd] nvarchar(10) default NULL
  , [record_date] datetime2 default NULL
  , [delete_flag] nvarchar(1) default 0
  , primary key (page_number,item_number)
)
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'汎用',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_general_purpose'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'画面CD',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_general_purpose',@level2type=N'COLUMN',@level2name=N'page_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'項目CD',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_general_purpose',@level2type=N'COLUMN',@level2name=N'item_number'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'項目名',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_general_purpose',@level2type=N'COLUMN',@level2name=N'item_name'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'項目説明',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_general_purpose',@level2type=N'COLUMN',@level2name=N'item_description'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_general_purpose',@level2type=N'COLUMN',@level2name=N'create_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'作成日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_general_purpose',@level2type=N'COLUMN',@level2name=N'create_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新者コード',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_general_purpose',@level2type=N'COLUMN',@level2name=N'record_user_cd'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'更新日時',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_general_purpose',@level2type=N'COLUMN',@level2name=N'record_date'
EXEC sys.sp_addextendedproperty  @name=N'MS_Description',@value=N'削除フラグ',@level0type=N'SCHEMA',@level0name=N'dbo',@level1type=N'TABLE',@level1name=N'sh_t_general_purpose',@level2type=N'COLUMN',@level2name=N'delete_flag'
