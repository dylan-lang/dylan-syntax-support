.PHONY: test generate

all: generate test

test:
	./node_modules/.bin/syntaxdev test --tests `find tests -name \*.dylan` --syntax src/dylan.syntax.yaml

generate:
	./node_modules/.bin/syntaxdev build-plist --in src/dylan.syntax.yaml --out generated/dylan.tmLanguage
	./node_modules/.bin/syntaxdev build-cson --in src/dylan.syntax.yaml --out generated/dylan.cson
	./node_modules/.bin/syntaxdev scopes --syntax src/dylan.syntax.yaml > generated/scopes
