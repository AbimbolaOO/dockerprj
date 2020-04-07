# setup:
# 	python3 -m venv dockerprj
	
install:
	pip install -r requirements.txt

test:
    #python -m pytest -vv --cov=myrepolib tests/*.py
    #python -m pytest --nbval notebook.ipynb
lint:
    # hadolint Dockerfile
    pylint --disable=R,C,W1203,W1202 demos/**/**.py

all: install lint test