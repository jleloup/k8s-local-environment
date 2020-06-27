requirements:
	helm repo add fluxcd https://charts.fluxcd.io
	helm repo update

deploy-all: deploy-prometheus deploy-flux

deploy-flux:
	helm upgrade --install flux fluxcd/flux \
	-f flux/values.yml

deploy-prometheus:
	helm upgrade --install prometheus-local stable/prometheus-operator \
	-f prometheus-operator/values.yml
