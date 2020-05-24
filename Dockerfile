# 使用基础镜像
FROM hub.c.163.com/library/java:8-alpine

# 指定镜像创建者信息
MAINTAINER Honglei 409178623@qq.com

COPY Shanghai /etc

RUN mv /etc/Shanghai /etc/localtime

RUN  echo 'Asia/Shanghai' >/etc/timezone

# 切换镜像的目录，进入 /usr/local 目录
WORKDIR /usr/local


# 创建 tomcat 目录，用来存放 tomcat 文件
RUN mkdir tomcat

# 将宿主机的 tomcat 目录下的全部文件考入至镜像的 /usr/local/tomcat 目录下
COPY apache-tomcat-8.0.46  /usr/local/tomcat

ADD target/ROOT.war /usr/local/tomcat/webapps/ROOT.war

WORKDIR /root

# 暴露 8080 端口 
EXPOSE 8080

# 设置容器启动时执行的操作
CMD /usr/local/tomcat/bin/catalina.sh run


