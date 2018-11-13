#!/bin/bash
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/kongxiangshuai
MONITOR_VERSION=v5.0.4

echo ""
echo "=========================================================="
echo "Pull Monitor ${MONITOR_VERSION} Images from aliyuncs.com ......"
echo "=========================================================="
echo ""

## 拉取镜像
docker pull ${MY_REGISTRY}/heapster-grafana-amd64:${MONITOR_VERSION}


## 添加Tag
docker tag ${MY_REGISTRY}/heapster-grafana-amd64:${MONITOR_VERSION} k8s.gcr.io/heapster-grafana-amd64:${MONITOR_VERSION}

## 
docker rmi ${MY_REGISTRY}/heapster-grafana-amd64:${MONITOR_VERSION}

echo ""
echo "=========================================================="
echo "Pull Monitor ${MONITOR_VERSION} Images FINISHED."
echo "=========================================================="

echo ""
