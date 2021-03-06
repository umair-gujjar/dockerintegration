define HELP

This Makefile contains build and test commands for the dockerintegration project.

Usage:

make help          - Show this message
make clean         - Remove generated files
make test          - Run tests
make integration   - Run integration tests
make quicktest     - Run tests excluding integration
endef

export HELP

.PHONY: help clean test integration alltest

help:
	@echo "$$HELP"

clean:
	find . -name '*.pyc' -delete

test:
	tox

integration:
	tox -e integration

quicktest:
	tox -e quicktest
