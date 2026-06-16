##@ Vendoring

.PHONY: sync
sync: ## Re-vendor the upstream agent-sandbox chart + CRDs (pinned in vendir.lock.yml).
	vendir sync
	@echo "Synced upstream chart (helm/agent-sandbox/charts) and CRDs (helm/agent-sandbox-crds/files/crds)."
	@echo "The helm.sh/resource-policy: keep annotation is added at render time by templates/crds.yaml — no post-sync step needed."
