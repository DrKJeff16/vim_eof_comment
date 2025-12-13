.PHONY: all help lint build local-install upload clean sign run-script

all: help

clean:
	@rm -rf build dist *.egg-info

help:
	@echo -e "Available targets:\n  help\n  lint\n  build\n  sign\n  local-install\n  stubs\n  run-script\n  upload\n  clean\n"

lint:
	@flake8 --statistics --show-source --color=always --max-line-length=100 --ignore=D401 .

build: clean stubs
	@python3 -m build &> /dev/null

sign: build
	@pypi-attestations sign dist/*

stubs:
	@stubgen -p vim_eof_comment -o .

local-install: build
	@python3 -m pip install .

run-script: local-install
	@vim-eof-comment -e py,pyi -n .

upload: sign
	@twine upload dist/*
