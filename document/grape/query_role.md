**简要描述：**

- 该接口用于分页查询菜单的角色信息。

**请求URL：**
- ` http://xx.com/grape/v1/menu/roles/query `

**请求方式：**
- POST

**参数：**
```
  {
    "name":"角色",  /*菜单角色名称,条件查询,可选参数*/
    "page_size":10, /*每页条数，必填*/
    "page_num":1,   /*页码，从1开始，必填*/
  }
```


**返回结果**

``` 
  {
    "code": 200,    //200为正确返回，非200参考全局错误定义文档描述
    "msg": "success!"
    "data": {
      "result": {
        "page_size":10,//改页条数
        "page_num":1,//当前页码
        "page_total":3,//总页数
        "record_total":25,//总条数数
        "list":[{
          "id": 1, //角色ID
          "name": "角色1", //菜单角色名称
          "desc": "",  //角色信息描述  
          "create_at": "2020-01-01 12:30"  //创建时间  
        },
        {
          "id": 2, //角色ID
          "name": "角色2", //菜单角色名称
          "desc": "",  //角色信息描述  
          "create_at": "2020-01-02 12:30"  //创建时间  
        }
        ]//数据列表 
      }
    }
  }
```

**备注**

- 更多返回错误代码请看首页的错误代码描述


