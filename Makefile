.PHONY: setup

datasets:
	mkdir -p datasets

data:
	mkdir -p data

tfhub_cache: data
	mkdir -p data/tfhub_cache

setup: datasets tfhub_cache 
	poetry env use python3.8
	poetry install
	poetry run jupyter labextension install @jupyter-widgets/jupyterlab-manager

