#!/bin/bash
#拉取镜像
docker pull registry.cn-qingdao.aliyuncs.com/wangxiaoke/kubernetes-dashboard-amd64:v1.10.0

#重新打标签
docker tag registry.cn-qingdao.aliyuncs.com/wangxiaoke/kubernetes-dashboard-amd64:v1.10.0 k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0

#删除无用镜像
docker image rm registry.cn-qingdao.aliyuncs.com/wangxiaoke/kubernetes-dashboard-amd64:v1.10.0
