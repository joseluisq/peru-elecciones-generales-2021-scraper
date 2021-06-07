run:
	@dart --version
	@dart run procesador.dart
.PHONY: run

run2:
	@dart --version
	@dart run procesador2.dart
.PHONY: run2

lint:
	@dart --version
	@dart analyze .
.PHONY: lint

jit:
	@dart --version
	@dart compile jit-snapshot procesador.dart
.PHONY: jit

jit2:
	@dart --version
	@dart compile jit-snapshot procesador2.dart
.PHONY: jit2

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
