.PHONY: minikube-start

minikube-start:
	minikube start \
		--driver=qemu \
		--container-runtime=containerd \
		--network-plugin=cni \
		--memory=16384 \
		--cpus=6

minikube-delete:
	minikube delete