系统接口权限分组数据库表名：b_permission_group,字段如下

---
| 字段标识 | 类型 | 必填  | 默认值  | 属性  | 字段名称
|:----------|:----------|:----------|:----------|:----------|:----------|
| id    | int  | 是  | 自增ID   | primary_key   | 权限分组ID   |
| parent_id  | int    | 是    | 0    | -    | 权限分组父级ID    |
| name    | varchar(32)    | 是  | -  | 非空   | 分组名称   |
| desc    | varchar(64)    | 是  | -  | 非空   | 分组描述   |
| created_at   | time | 是   | 自动生成   | -    | 创建时间    |