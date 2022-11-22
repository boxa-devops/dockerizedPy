FROM python:3.10-slim

RUN apt-get update && \
    apt-get install -y gcc git libpq-dev libmagic1 && \
    apt clean &&\
    rm -rf /var/cache/apt/*
RUN apt-get install -y curl
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONIOENCODING utf-8

COPY requirements.txt .
#================================================
# Packages
#================================================
RUN pip install --upgrade pip && pip install wheel &&\
    pip install --no-cache-dir -r requirements.txt


#================================================
# Code
#================================================
COPY . /src
RUN useradd -m -d /src -s /bin/bash app \
    && chown -R app:app /src/*
WORKDIR /src
USER app

CMD python main.py