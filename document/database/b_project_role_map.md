项目角色绑定数据库表名：b_account_project_role,字段如下

---
| 字段标识 | 类型 | 必填  | 默认值  | 属性  | 字段名称
|:----------|:----------|:----------|:----------|:----------|:----------|
| id    | int    | 是    | 自增ID    | primary_key    | 唯一自增ID    |
| account_id    | varchar(32)    | 是    | -    | -    | 账户ID    |
| project_id   | int    | 是  |  -  | -    | 项目ID   |
| role_id   | int    | 是  |  -  | -    | 角色ID   |
| created_at   | time | 是   | 自动生成   | -    | 创建时间    |
