# from https://tech.davis-hansson.com/p/make/
# use bash
SHELL := bash
# ensure each Make recipe is ran as one single shell session, rather than one new shell per line
.ONESHELL:
# use bash's strict mode
.SHELLFLAGS := -eu -o pipefail -c
# if a Make rule fails, it's target file is deleted.
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

install:
	python3 -m venv .env
	.env/bin/pip install -r requirements.txt

clean:
	rm -rf .env
