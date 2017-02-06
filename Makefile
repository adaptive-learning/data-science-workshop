install:
	pip install -r requirements.txt

run:
	jupyter nbextension enable --py --sys-prefix widgetsnbextension
	jupyter notebook
