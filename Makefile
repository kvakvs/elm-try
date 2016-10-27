.PHONY: run1
run1:
	elm reactor

.PHONY: run2
run2:
	npm run dev

.PHONY: build
build:
	elm-make src/Main.elm --output out/Main.html

.PHONY: release
release:
	npm run build
