FROM quay.io/jupyter/r-notebook

RUN mamba install --yes 'r-tidyverse' && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

