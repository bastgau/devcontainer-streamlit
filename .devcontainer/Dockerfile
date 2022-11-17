# See here for image contents:
FROM mcr.microsoft.com/azure-functions/python:4-python3.9-core-tools
WORKDIR /workspaces/app

ARG WORKSPACE_FOLDER="/workspaces/app"
VOLUME $WORKSPACE_FOLDER/.venv

EXPOSE 8501

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*
