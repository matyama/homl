.PHONY: setup system-libs

datasets:
	mkdir -p datasets

data:
	mkdir -p data

tfhub_cache: data
	mkdir -p data/tfhub_cache

system-libs:
	sudo apt install -y libglu1-mesa xvfb

setup: datasets tfhub_cache system-libs 
	poetry env use python3.8
	poetry install
	poetry run jupyter labextension install @jupyter-widgets/jupyterlab-manager

