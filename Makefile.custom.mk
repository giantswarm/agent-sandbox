##@ Vendoring

.PHONY: sync
sync: ## Re-vendor the upstream agent-sandbox chart + CRDs (vendir), then re-apply the keep annotation to the CRDs.
	vendir sync
	@for f in helm/agent-sandbox-crds/templates/*.x-k8s.io_*.yaml; do \
		yq -i '.metadata.annotations.["helm.sh/resource-policy"] = "keep"' "$$f"; \
	done
	@echo "Synced upstream charts; re-applied helm.sh/resource-policy: keep to CRDs."
