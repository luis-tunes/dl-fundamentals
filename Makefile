.PHONY: help run

help:
	@echo "Usage: make run notebook=<notebook_path>"

run:
	@notebook_name=$(shell basename $(notebook) .ipynb); \
	jupyter nbconvert --to notebook --execute $(notebook) --output $$notebook_name-executed.ipynb
