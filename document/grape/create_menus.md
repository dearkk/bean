**简要描述：**

- 该接口用于前端上传全局菜单信息到服务器中保存

**请求URL：**
- ` http://xx.com/grape/v1/menus/create `

**请求方式：**
- POST

**参数：**
```
  {
    "version":"v1.0.1", //当前菜单结构版本
    "menus":[{
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
          "component": "@/views/main/platform/overview.vue", //组件绝对位置
        }
        "children":[]   //该菜单下的子菜单
      ]
    }]
  }
```


**返回结果**

``` 
  {
    "code": 200,    //200为正确返回，非200参考全局错误定义文档描述
    "msg": "success!"
    "data": {}
  }
```

**备注**

- 更多返回错误代码请看首页的错误代码描述


