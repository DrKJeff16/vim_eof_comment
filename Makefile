.PHONY: all help lint build local-install upload clean

all: help

clean:
	@rm -rf build dist *.egg-info

help:
	@echo -e "Available targets:\n  - help\n  - lint\n  - build\n  - local-install\n  - upload\n  - clean\n"

lint:
	@flake8 --statistics --show-source --color=always --max-line-length=100 --docstring-convention=numpy --ignore=D401 .

build: clean
	@command python -m build &> /dev/null

stubs:
	@stubgen .

upload: build
	@twine upload dist/*
