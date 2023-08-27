install:
		pip install --upgrade pip &&\
				pip install -r requirements.txt

test: 
		python -m pytest -vv main.py

format:
		black *.py

run:
		python main.py

run-unicorn:
		unicorn main:app --reload
	
killweb:
	sudo killall uvicorn

lint:
	pylint --disable=R,C main.py

all: install lint
