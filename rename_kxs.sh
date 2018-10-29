#!/bin/bash 
images=(kube-proxy-amd64:v1.12.2 kube-scheduler-amd64:v1.12.2 kube-controller-manager-amd64:v1.12.2 kube-apiserver-amd64:v1.12.2 etcd-amd64:3.1.10 pause-amd64:3.0 kubernetes-dashboard-amd64:v1.8.3 k8s-dns-sidecar-amd64:1.14.7 k8s-dns-kube-dns-amd64:1.14.7 k8s-dns-dnsmasq-nanny-amd64:1.14.7) 
for image in ${images[@]} ; do 
	docker pull shayu/$image 
	docker tag shayu/$image gcr.io/google_containers/$image 
	docker rmi shayu/$image 
done
