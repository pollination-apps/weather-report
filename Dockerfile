FROM python:3.7 as base

RUN apt-get update \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt || echo no requirements.txt file
