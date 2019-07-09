# Copyright (c) Anthony Costa.
# Distributed under the terms of the Modified BSD License.

# Developed downstream of NGC DL containers.
ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

LABEL MAINTAINER="Anthony Costa <anthony.costa@mssm.edu>"

USER $NB_UID

RUN conda install --quiet --yes opencv vtk
RUN conda install --quiet --yes -c simpleitk simpleitk
RUN conda install --quiet --yes -c conda-forge webcolors
RUN pip install --upgrade-strategy only-if-needed git+git://github.com/fjean/pymeanshift@master
RUN fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

USER $NB_UID
