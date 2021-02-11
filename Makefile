.PHONY: setup

setup:
	poetry env use python3.8
	poetry install
	poetry run jupyter labextension install @jupyter-widgets/jupyterlab-manager

