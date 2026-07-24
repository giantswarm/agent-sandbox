# agent-sandbox

Giant Swarm packaging of the upstream kubernetes-sigs/agent-sandbox controller, which manages Sandbox resources (isolated, stateful, singleton pods) for AI agent runtimes on Kubernetes.

**Homepage:** <https://github.com/giantswarm/agent-sandbox>

## Source Code

* <https://github.com/giantswarm/agent-sandbox>
* <https://github.com/kubernetes-sigs/agent-sandbox>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| file://charts/agent-sandbox | agent-sandbox | 0.1.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| agent-sandbox.namespace.create | bool | `true` |  |
| agent-sandbox.namespace.name | string | `"agent-sandbox-system"` |  |
| agent-sandbox.image.repository | string | `"gsoci.azurecr.io/giantswarm/agent-sandbox-controller"` |  |
| agent-sandbox.image.tag | string | `"v0.5.3"` |  |
| agent-sandbox.image.pullPolicy | string | `"IfNotPresent"` |  |
| agent-sandbox.replicaCount | int | `1` |  |
| agent-sandbox.controller.leaderElect | bool | `true` |  |
| agent-sandbox.controller.extensions | bool | `false` |  |
| agent-sandbox.controller.extraArgs | list | `[]` |  |
| agent-sandbox.resources.requests.cpu | string | `"50m"` |  |
| agent-sandbox.resources.requests.memory | string | `"64Mi"` |  |
| agent-sandbox.resources.limits.cpu | string | `"500m"` |  |
| agent-sandbox.resources.limits.memory | string | `"256Mi"` |  |
