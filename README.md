# controlhub 容器脚本

## 用途
制作controlhub的docker镜像, 运行controlhub容器

## 用法
```sh
$ make

Usage:
  make <target>
  help             Display this help.
  image            Build docker image
  start            Start controlhub container
  stop             Stop controlhub container
  remove           Remove controlhub container
```

## 要求
1. 机器上必须有安装docker
2. 将cactus、controlhub两个目录放在和Dockerfile、Makefile同级目录下
