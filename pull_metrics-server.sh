#!/bin/bash
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/kongxiangshuai
METRICS_SERVER_VERSION=v1.5.2

echo ""
echo "=========================================================="
echo "Pull METRICS_SERVER ${METRICS_SERVER_VERSION} Images from aliyuncs.com ......"
echo "=========================================================="
echo ""

## 拉取镜像
docker pull ${MY_REGISTRY}/metrics-server-amd64:${METRICS_SERVER_VERSION}


## 添加Tag
docker tag ${MY_REGISTRY}/metrics-server-amd64:${METRICS_SERVER_VERSION} k8s.gcr.io/metrics-server-amd64:${METRICS_SERVER_VERSION}

## 
docker rmi ${MY_REGISTRY}/metrics-server-amd64:${METRICS_SERVER_VERSION}

echo ""
echo "=========================================================="
echo "Pull METRICS_SERVER ${METRICS_SERVER_VERSION} Images FINISHED."
echo "=========================================================="

echo ""
