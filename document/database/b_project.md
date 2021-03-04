项目信息数据库表名：b_project,字段如下

---
| 字段标识 | 类型 | 必填  | 默认值  | 属性  | 字段名称
|:----------|:----------|:----------|:----------|:----------|:----------|
| id    | int    | 是    | 自增ID    | primary_key    | 唯一自增ID    |
| name    | varchar(64)    | 是    | -    | -    | 项目名称    |
| account_id    | varchar(32)    | 是    | -    | -    | 项目创建账户ID    |
| namespace    | varchar(32)    | 是    | -    | -    | 命名空间    |
| permission_audit    | bool    | 是    | true    | -    | 是否开启操作权限审核   |
| created_at   | time | 是   | 自动生成   | -    | 创建时间    |
