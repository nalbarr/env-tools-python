NOTEBOOK_LOCAL=./notebooks/spine_binary_classifier_pt.ipynb

help:
	@echo make env
	@echo make install
	@echo make run
	@echo make run-local
	@echo make clean

env:
	python3 -m venv --system-site-packages venv
	@echo run run set_env.sh manually to set venv/
	# . venv/bin/activate
	# NAA. run set_env.sh manually via . venv/bin/activate

install:
	python3 -m pip install --upgrade pip
	pip install -r requirements.txt

run:
	jupyter lab

run-local:
	jupyter lab $(NOTEBOOK_LOCAL)

clean:
	rm -fr venv
