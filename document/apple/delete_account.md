**简要描述：**

- 删除平台账户接口。

**请求URL：**
- ` http://xx.com/apple/v1/account/delete `

**请求方式：**
- POST

**参数：**
```
  {
    "id": "bean" //要删除的账户
  }
```


**返回结果**

``` 
  {
    "code": 200,    //200为正确返回，非200参考全局错误定义文档描述
    "msg": "success!"
    "data": {
    }
  }
```

**备注**

- 更多返回错误代码请看首页的错误代码描述