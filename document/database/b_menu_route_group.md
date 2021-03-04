菜单路由分组数据库表名：b_menu_route_group,字段如下

---
| 字段标识 | 类型 | 必填  | 默认值  | 属性  | 字段名称
|:----------|:----------|:----------|:----------|:----------|:----------|
| id    | int    | 是    | 自增ID    | primary_key    | 唯一自增ID    |
| name    | varchar(64)    | 是    | -    | -  unique  | 路由名称    |
| title    | varchar(64)    | 是    | -    | -    | 路由标题    |
| parent_id    | int   | 是    | -    | -    |  父级分组ID  |
| component   | varchar(128)    | 是  | -  | -    | 路由组件绝对路径   |