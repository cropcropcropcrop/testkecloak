FROM jupyter/base-notebook:latest

# run as root and set environment so jupyter scripts know the user
USER root
ENV NB_USER=root \
    NB_UID=0 \
    NB_GID=0 \
    HOME=/root

# ensure home exists and permissions are root:root
RUN mkdir -p /root && chown -R root:root /root

# keep running as root
USER root

# default command from base image will work (start-notebook.sh)
