FROM jupyter/base-notebook:python-3.11

LABEL maintainer="Melnikov Ivan <ivanesmelnikov@gmail.com>"
LABEL repo="https://github.com/Ivanes1/checkbox-nn"

WORKDIR /home/jovyan/work

USER root

# https://stackoverflow.com/a/63377623
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
