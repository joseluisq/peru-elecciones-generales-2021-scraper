run:
	@dart --version
	@dart run procesador.dart
.PHONY: run

lint:
	@dart --version
	@dart analyze .
.PHONY: lint

jit:
	@dart --version
	@dart compile jit-snapshot procesador.dart
.PHONY: jit

dep:
	@dart --version
	@dart pub get
.PHONY: dep

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
