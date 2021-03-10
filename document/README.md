# Introduction
gitbook init  
gitbook install  
gitbook serve  
gitbook插件官网地址：https://plugins.gitbook.com/  

****windows10家庭版安装minikube****  
**1、安装Hyper-V,把下面内容保存为bat文件，并以管理员权限运行文件**  
```bigquery
pushd "%~dp0"

dir /b %SystemRoot%\servicing\Packages\*Hyper-V*.mum >hyper-v.txt

for /f %%i in ('findstr /i . hyper-v.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"

del hyper-v.txt

Dism /online /enable-feature /featurename:Microsoft-Hyper-V-All /LimitAccess /ALL
```   

**2、安装Kubectl**  
在 Windows 上用 Chocolatey (一个包管理器)安装 kubectl, 打开PowerShell，用管理员身份    
```bigquery
# 输入此命令
Get-ExecutionPolicy

# 如果返回 Restricted ,运行下列命令
Set-ExecutionPolicy AllSigned

# 最后安装Chocolatey,执行此命令
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# 检测是否安装成功
choco -

#安装 kubectl
choco install kubernetes-cli

#检测版本
kubectl version --client
```

**3、安装 Minikube**
```bigquery
choco install minikube
```

**4、使用minikube启动kubernetes集群**
```bigquery
minikube start --vm-driver=hyperv --mount=true --mount-string="D:\cicd:/data" --insecure-registry=20.97.8.71 --image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers

#坚持集群状态
minikube status

#检测kubectl
kubectl get nodes

#停止集群
minikube stop

#清理本地状态
检测kubectl
```
5、集群外能访问
```bigquery
minikube service tekton-dashboard -n tekton-pipelines
```
