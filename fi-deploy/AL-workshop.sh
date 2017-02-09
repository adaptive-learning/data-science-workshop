#!/bin/bash
TMPROOT=/tmp/poznej-fi-2017
PROJECT_ROOT=$TMPROOT/al-workshop
mv $PROJECT_ROOT $PROJECT_ROOT.`date +'%s'`
mkdir -p $TMPROOT
git clone https://github.com/adaptive-learning/data-science-workshop.git $PROJECT_ROOT
export WORKON_HOME=~/.virtualenv
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
# mkvirtualenv -a $PROJECT_ROOT --python=/usr/bin/python3.5 al-workshop
workon al-workshop
# pip install -r requirements.txt
jupyter nbextension enable --py --sys-prefix widgetsnbextension
jupyter notebook --no-browser
