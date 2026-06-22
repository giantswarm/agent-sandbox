##@ Vendoring

.PHONY: sync
sync: ## Re-vendor the upstream agent-sandbox chart + CRDs (pinned in vendir.lock.yml).
	vendir sync
	@# vendir writes the CRDs PRISTINE into helm/agent-sandbox/crds. The app chart
	@# owns them via Helm's crds/ directory, so we inject helm.sh/resource-policy:
	@# keep into each committed copy here (Helm never templates crds/, so it can't
	@# be done at render time). This guards the CRDs — and their CRs — against
	@# helm uninstall, mirroring Flux crds: CreateReplace on the HelmRelease.
	@for f in helm/agent-sandbox/crds/*.yaml; do \
		grep -q 'helm.sh/resource-policy: keep' "$$f" || \
		sed -i '/^    controller-gen.kubebuilder.io\/version:/a\    helm.sh/resource-policy: keep' "$$f"; \
	done
	@echo "Synced upstream chart (helm/agent-sandbox/charts) and CRDs (helm/agent-sandbox/crds), with helm.sh/resource-policy: keep injected."
