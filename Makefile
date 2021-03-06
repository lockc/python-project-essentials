update-deps:
	pip install --upgrade pip-tools pip setuptools
	pip-compile --upgrade --build-isolation --generate-hashes --output-file requirements/main.txt requirements/main.in
	pip-compile --upgrade --build-isolation --generate-hashes --output-file requirements/dev.txt requirements/dev.in

init:
	pip install --upgrade -r requirements/main.txt  -r requirements/dev.txt
	rm -rf .tox

update: update-deps init

.PHONY: update-deps init update