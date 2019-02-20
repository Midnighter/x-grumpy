FROM debian:jessie-slim

ENV USER=grumpy
ENV HOME="/home/${USER}"
ARG UID=1000
ARG GID=1000
ARG SCRUMPY=ScrumPy1254

ARG CWD=/opt

RUN groupadd --system --gid "${GID}" "${USER}" \
    && useradd --system --create-home --uid "${UID}" --gid "${USER}" "${USER}"

COPY "${SCRUMPY}" "${CWD}/ScrumPy"

RUN apt-get update \
    && apt-get install --yes --only-upgrade openssl ca-certificates

RUN apt-get install --yes --no-install-recommends \
        blt \
        build-essential \
        cmake \
        libgmp3-dev \
        libmeschach-dev \
        libsbml5-python \
        libmpfr-dev \
        libmpc-dev \
        python2.7-dev \
        python-ply \
        python-numpy \
        python-scipy \
        python-gmpy \
        python-pmw \
        python-tk \
        python-wxtools \
        python-qt4 \
        python-svn \
        swig

WORKDIR "${CWD}/ScrumPy"

RUN ./install.py

RUN chown --recursive "${USER}:${USER}" "${HOME}"

USER "${USER}"

WORKDIR "${HOME}"

CMD ["ScrumPy"]
