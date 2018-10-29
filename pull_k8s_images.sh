#!/bin/bash
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/kongxiangshuai
K8S_VERSION=v1.12.2
ETC_VERSION=3.2.24
PAUSE_VERSION=3.1
COREDNS_VERSION=1.2.2

echo ""
echo "=========================================================="
echo "Pull Kubernetes ${K8S_VERSION} Images from aliyuncs.com ......"
echo "=========================================================="
echo ""

## 拉取镜像
docker pull ${MY_REGISTRY}/kube-apiserver:${K8S_VERSION}
docker pull ${MY_REGISTRY}/kube-controller-manager:${K8S_VERSION}
docker pull ${MY_REGISTRY}/kube-scheduler:${K8S_VERSION}
docker pull ${MY_REGISTRY}/kube-proxy:${K8S_VERSION}
docker pull ${MY_REGISTRY}/etcd:${ETC_VERSION}
docker pull ${MY_REGISTRY}/pause:${PAUSE_VERSION}
docker pull ${MY_REGISTRY}/coredns:${COREDNS_VERSION}


## 添加Tag
docker tag ${MY_REGISTRY}/kube-apiserver:${K8S_VERSION} k8s.gcr.io/kube-apiserver:${K8S_VERSION}
docker tag ${MY_REGISTRY}/kube-scheduler:${K8S_VERSION} k8s.gcr.io/kube-scheduler:${K8S_VERSION}
docker tag ${MY_REGISTRY}/kube-controller-manager:${K8S_VERSION} k8s.gcr.io/kube-controller-manager:${K8S_VERSION}
docker tag ${MY_REGISTRY}/kube-proxy:${K8S_VERSION} k8s.gcr.io/kube-proxy:${K8S_VERSION}
docker tag ${MY_REGISTRY}/etcd:${ETC_VERSION} k8s.gcr.io/etcd:${ETC_VERSION}
docker tag ${MY_REGISTRY}/pause:${PAUSE_VERSION} k8s.gcr.io/pause:${PAUSE_VERSION}
docker tag ${MY_REGISTRY}/coredns:${COREDNS_VERSION} k8s.gcr.io/coredns:${COREDNS_VERSION}

## 
docker rmi ${MY_REGISTRY}/kube-apiserver:${K8S_VERSION}
docker rmi ${MY_REGISTRY}/kube-scheduler:${K8S_VERSION}
docker rmi ${MY_REGISTRY}/kube-controller-manager:${K8S_VERSION}
docker rmi ${MY_REGISTRY}/kube-proxy:${K8S_VERSION}
docker rmi ${MY_REGISTRY}/etcd:${ETC_VERSION}
docker rmi ${MY_REGISTRY}/pause:${PAUSE_VERSION}
docker rmi ${MY_REGISTRY}/coredns:${COREDNS_VERSION}

echo ""
echo "=========================================================="
echo "Pull Kubernetes ${K8S_VERSION} Images FINISHED."
echo "=========================================================="

echo ""
