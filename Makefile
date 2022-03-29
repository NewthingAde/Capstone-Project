## The Makefile includes instructions on: 
# environment setup, install, lint and build

setup:
	# Create a python virtualenv & activate it
	python3 -m venv ~/.devops-capstone
	# source ~/.devops-capstone/bin/activate 

install:	
	# This should be run from inside a virtualenv
	echo "Installing: dependencies..."
	pip install --upgrade pip &&\
			pip install -r requirements.txt

	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\chmod +x ./hadolint

	
test:
	# Additional, optional, tests could go here
	#python -m pytest -vv hello.py
	#python -m pytest 

lint:
	
	# This is linter for Dockerfiles
	./hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 hello.py




