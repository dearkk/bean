| 模块名称  | 功能  |
|:----------|:----------|
| market    | 主程序    |
| component    | 公共包、公共组件、所有第三方依赖库    |
| apple    | 用户、角色权限管理    |


// 添加子模块方法git submodule add https://github.com/dearkk/kube-mesh.git
克隆项目后，默认子模块目录下无任何内容。需要在项目根目录执行如下命令完成子模块的下载：
git submodule init
git submodule update

kaniko
参考：
https://github.com/GoogleContainerTools/kaniko/blob/master/docs/tutorial.md
kaniko 是 Google 开源的一个工具，旨在帮助开发人员从容器或 Kubernetes 集群内的 Dockerfile 构建容器镜像。

tektoncd
https://github.com/tektoncd
Tekton是一个谷歌开源的kubernetes原生CI/CD系统，功能强大且灵活，开源社区也正在快速的迭代和发展壮大。
google cloud已经推出了基于Tekton的服务（https://cloud.google.com/Tekton/）。