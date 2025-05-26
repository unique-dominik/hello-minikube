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

minikube-fwd-argocd:
	open http://127.0.0.1.nip.io:8080
	kubectl port-forward service/argo-cd-argocd-server 8080:80 -n argocd