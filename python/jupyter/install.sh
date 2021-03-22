#!/usr/bin/sh

sudo /usr/bin/pip install jupyter ipywidgets RISE
jupyter nbextension install https://github.com/drillan/jupyter-black/archive/master.zip --user

jupyter nbextension enable --py widgetsnbextension
jupyter nbextension enable --py rise
jupyter nbextension enable jupyter-black-master/jupyter-black
