#!/usr/bin/make

all: env
	env/bin/pip install --upgrade language-check

env: .virtualenv
	.virtualenv/source/virtualenv.py env --python=python3

.virtualenv:
	mkdir -p .virtualenv
	wget -c \
		https://pypi.python.org/packages/source/v/virtualenv/virtualenv-12.0.7.tar.gz \
    	-O .virtualenv/archive.tar.gz
	tar -xvf .virtualenv/archive.tar.gz
	mv virtualenv-* .virtualenv/source
