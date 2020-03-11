.PHONY: n nb setup

n:
	PYTHONPATH=`pwd` screen .venv/bin/jupyter notebook --ip 0.0.0.0 --port=8833 --no-browser .

nb:
	PYTHONPATH=`pwd` screen .venv/bin/jupyter notebook --ip 0.0.0.0 --port=8833 .

setup:
	#virtualenv || python3 -m pip install --user virtualenv
	test -d .venv || virtualenv --python=python3.6 .venv
	poetry install -vvv
