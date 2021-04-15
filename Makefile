run:
	@dart --version
	@dart run procesador.dart
.PHONY: run

lint:
	@dart --version
	@dart analyze .
.PHONY: lint

fmt_lint:
	@dart --version
	@dartfmt --dry-run --set-exit-if-changed .
.PHONY: fmt_lint

fmt:
	@dart --version
	@dart format --fix .
.PHONY: fmt

fix:
	@dart --version
	@dart fix --apply .
.PHONY: fix
