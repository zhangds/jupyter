SELECT USER_TAB_COLS.TABLE_NAME as 表名,USER_TAB_COLS.COLUMN_NAME as 列名 ,
       USER_TAB_COLS.DATA_TYPE as 数据类型, USER_TAB_COLS.DATA_LENGTH as 长度,
       USER_TAB_COLS.NULLABLE as 是否为空,USER_TAB_COLS.COLUMN_ID as 列序号,
       user_col_comments.comments as 备注 FROM USER_TAB_COLS
         inner join user_col_comments
           on user_col_comments.TABLE_NAME=USER_TAB_COLS.TABLE_NAME and user_col_comments.COLUMN_NAME=USER_TAB_COLS.COLUMN_NAME
where USER_TAB_COLS.TABLE_NAME='T_SCENE'