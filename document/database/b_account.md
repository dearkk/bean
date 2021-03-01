账户数据库表名：b_account,字段如下

---
| 字段标识 | 类型 | 必填  | 默认值  | 属性  | 字段名称  
|:----------|:----------|:----------|:----------|:----------|:----------|
| id    | varchar(32) | 是 | - | primary_key    | 账户ID唯一  |
| name    | varchar(64)  | 是   | - | -    | 账户名称  |
| password    | varchar(32)  | 是   | -   | -   | 账户密码(密文)   |
| telephone    | varchar(16)  | 否   | -   | -   | 座机号码   |
| mobile    | varchar(13)  | 否   | -   | -   | 手机号码(+86)   |
| contacts    | varchar(16)  | 否   | -   | -   | 联系人   |
| created_at   | time | 是   | 自动生成   | -    | 创建时间    |
| update_at    | time | 是   | 自动生成   | -    | 上一次更新时间    |
| desc    | varchar(1024)  |否   | ""   | -    | 备注信息  |
| type    | int | 是   | 2   | -    | 用户类型，1：系统账户，2：普通账户，3：其他子账户  |
| children_max  | int | 是   | 10   | -    | 该账户下子账户最多个数  |
| children_cur  | int | 是   | 0   | -    | 该账户下子账户当前个数  |
| parent_id    | varchar(32) | 是   | "none"   | index    | 所属父级账户    |