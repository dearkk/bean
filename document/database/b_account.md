账户数据库表名：b_account,字段如下

---
| 字段标识 | 类型 | 必填  | 默认值  | 属性  | 字段名称  
|:----------|:----------|:----------|:----------|:----------|:----------|
| id    | varchar(32) | 是 | - | primary_key    | 账户ID唯一  |
| name    | varchar(64)  | 是   | - | -    | 账户名称  |
| organization    | varchar(64)  | 是   | -   | -   | 组织机构名称   |
| password    | varchar(32)  | 是   | -   | -   | 账户密码(密文)   |
| status    | int | 是   | 1   | -    | 账户状态，0：关闭状态，1：激活状态  |
| telephone    | varchar(16)  | 否   | -   | -   | 座机号码   |
| mobile    | varchar(13)  | 否   | -   | -   | 手机号码(+86)   |
| created_at   | time | 是   | 自动生成   | -    | 创建时间    |
| update_at    | time | 是   | 自动生成   | -    | 上一次更新时间    |
| desc    | varchar(1024)  |否   | ""   | -    | 备注信息  |
| type    | int | 是   | 2   | -    | 用户类型，1：系统账户，2：普通账户，3：其他子账户  |
| children_max  | int | 是   | 10   | -    | 该账户下子账户最多个数  |
| children_cur  | int | 是   | 0   | -    | 该账户下子账户当前个数  |
| parent_id    | varchar(32) | 是   | "none"   | index    | 所属父级账户    |
| menu_role_id    | int | 是   | -   | -   | 账户菜单角色    |