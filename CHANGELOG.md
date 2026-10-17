# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.0] - 2026-06-22

- changed: the `agent-sandbox` app chart now owns its CRDs (Sandbox + extensions) in its Helm 3 `crds/` directory with `helm.sh/resource-policy: keep` baked in, so they travel with the app at the same version. Combined with Flux `crds: CreateReplace` on the HelmRelease, CRDs upgrade atomically on every release.
- removed: the standalone `agent-sandbox-crds` chart and its CI publishing jobs. CRD delivery moved into the app chart (above); there is no external standalone consumer.

## [0.1.1] - 2026-06-16

- changed: `app.giantswarm.io` label group was changed to `application.giantswarm.io`

[Unreleased]: https://github.com/giantswarm/agent-sandbox/compare/v0.2.0...HEAD
[0.2.0]: https://github.com/giantswarm/agent-sandbox/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/giantswarm/agent-sandbox/releases/tag/v0.1.1
