.PHONY: lint
lint: tmp/cat_linter
	./tmp/cat_linter/cat_linter "wren_cli cat.wren"

tmp/cat_linter:
	git clone --quiet https://github.com/caius/cat_linter tmp/cat_linter
