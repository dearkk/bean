**关于协议**
- API基于HTTP/HTTPS。

**URL约定**

`[http|https]://host:port/service/version/resouce/method`

	新增：POST .../create
	修改：POST .../update
	删除：POST .../delete
	查询：GET .../query

URL示例：
`http://20.97.8.111:8080/cloud/v1/image/create`

**接口中的Access Token**查询

无特别说明的接口，访问都需要用户正确登录获取Access Token后才能访问，每次API调用都需要在HTTP头里加上如下字段.

`cloud-token: ACCESSTOKENXXXXXX`

**请求响应**

接口响应体是标准的JSON，结构如下：
```
{
	"code":200,// 操作结果状态码
	"msg":"success",// 操作结果描述
	"data":JSON,// 具体返回数据
}
```
http响应状态码都是200；当操作成功时，code 为200，result 是 success；操作失败时，code是错误码，result 是错误提示信息；

**错误码**

错误码在http标准错误码扩展而来，高三位是标准http错误码，中间两位是模块编号，低三位是错误类型。比如，"无效用户登录名"错误发生时，http会返回200，同时消息体中的错误码code是40001007，其中 400 与http状态码含义相同，01 是登陆模块编码，007是错误类型。

**字段编码规则**

入参和出参字段编码采用下划线命名规则，例如page_num,page_size。

**分页说明**

如无特殊说明，分页的页码page_num从1开始，每页大小page_size为10。分页返回结果示例：
```
{
	"code":200,// 操作结果状态码
	"msg":"success",// 操作结果描述
	"data":{
		"page_size":10,//每页大小
		"page_num":1,//页码
		"page_total":3,//总页数
		"record_total":25,//总记录数
		"list":[{}]//数据列表
	},
}
```
