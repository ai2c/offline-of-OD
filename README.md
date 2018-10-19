# OD离线网盘一键安装

## 对象
只适用于Debian 8、9，且无网站环境，会自动签发Let's Encrypt SSL证书，请提前将域名解析至VPS服务器。

## 部署
运行命令：

`git clone https://github.com/ai2c/offline-of-OD.git && cd offline-of-OD && bash Aria2_OneIndex.sh`

按要求输入以下选项：

输入域名(如:oneindex.moerats.com):

输入Aria2密钥:

输入OneIndex/OneDrive中的一个文件夹（格式:RATS，此后所有文件都会上传到该文件夹）:

输入好了后直到安装完成，如果Nginx安装失败，检查下系统是否自带Apache2，然后卸载掉就行了。

## 访问
OneIndex地址：https://xx.com

Aria2Ng访问地址：http://IP:8080

OneIndex后台地址：https://xx.com/?/admin （默认密码：oneindex）

## 文件

OneIndex及域名根目录：/home/wwwroot/xx.com

Aria2Ng根目录：/home/wwwroot/aria2ng

域名证书目录：/home/wwwroot/ssl

Aria2配置文件夹：/root/.aria2

Aria2下载目录：/root/Download
