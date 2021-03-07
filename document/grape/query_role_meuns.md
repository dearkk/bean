**简要描述：**

- 该接口用于查询所属菜单角色下的所有菜单项信息。

**请求URL：**
- ` http://xx.com/grape/v1/role/menus/query `

**请求方式：**
- POST

**参数：**
```
  {
    "name":"角色",  /*菜单角色名称,条件查询,可选参数*/
  }
```


**返回结果**

``` 
  {
    "code": 200,    //200为正确返回，非200参考全局错误定义文档描述
    "msg": "success!"
    "data": {
      "result": [{
        "path": "/platform",  //路由路径
        "name": "platform",   //路由名称
        "meta":{
          "title": "平台管理"    //标题
          "icon": "el-user"   //菜单图标
          "component": "@/views/main/platform.vew", //组件绝对位置
        }
        "children":[      //该菜单下的子菜单
          "path": "/overview",  //路由路径
          "name": "overview",   //路由名称
          "meta":{
            "title": "平台概述"    //标题
            "icon": "el-user"   //菜单图标
            "component": "@/views/main/platform/overview.vew", //组件绝对位
          }
          "children":[]   //该菜单下的子菜单
        ]
      }]
    }
  }
```

**备注**

- 更多返回错误代码请看首页的错误代码描述