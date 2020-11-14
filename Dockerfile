ARG BASE_CONTAINER=jupyter/scipy-notebook:42f4c82a07ff
FROM $BASE_CONTAINER

USER root

# ffmpeg for matplotlib anim & dvipng+cm-super for latex labels
RUN apt-get update

RUN conda install --quiet --yes \
  'numpy == 1.18.5' \ 
   && \
  conda clean --all -f -y  &&\ 
  fix-permissions "${CONDA_DIR}" && \
  fix-permissions "/home/${NB_USER}"


USER $NB_UID

WORKDIR $HOME
