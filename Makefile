export PYTHON_VERSION?=3.13
export BEHAVE_TEST_FOLDER=test/bdd

.PHONY: env-%
env-%:
	@ if [ "${${*}}" = "" ];then echo "Missing environment variable $*";exit 1;fi


.PHONY: build
build: ensure-poetry
		python -m pip install --upgrade pip
		# poetry env use 3.13
		# @echo ">> Installing dependencies"
		# poetry install
		# poetry lock