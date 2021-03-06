**简要描述：**

- 更新账户信息。

**请求URL：**
- ` http://xx.com/apple/v1/account/update `

**请求方式：**
- POST

**参数：**
```
  {
    "resources":[{
      "name":"password", //更新密码字段
      "value": "xxxxxxx" //RSA加密
    },
    {
      "name":"name", //账户名称字段
      "value": "大豆云科技" //
    },
    ] 
  }
```
**目前支持更新的字段**  

| 字段标识 | 类型 | 必填  | 默认值  | 属性  | 字段名称
|:----------|:----------|:----------|:----------|:----------|:----------|
| name    | varchar(64)  | 是   | - | -    | 账户名称  |
| password    | varchar(32)  | 是   | -   | -   | 账户密码(密文)   |
| telephone    | varchar(16)  | 否   | -   | -   | 座机号码   |
| mobile    | varchar(13)  | 否   | -   | -   | 手机号码(+86)   |
| contacts    | varchar(16)  | 否   | -   | -   | 联系人   |
| desc    | varchar(1024)  |否   | ""   | -    | 备注信息  |
| children_max  | int | 是   | 10   | -    | 该账户下子账户最多个数(系统超级管理员才能修改)  |

---

**返回结果**

``` 
  {
    "code": 200,    //200为正确返回，非200参考全局错误定义文档描述
    "msg": "success!"
    "data": {
      "result": "ksdflasdlfhalkjsdhflajhsdfh" //token
    }
  }
```

**备注**

- 更多返回错误代码请看首页的错误代码描述