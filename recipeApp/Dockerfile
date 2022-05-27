FROM python:3.7.3-slim

ENV PYTHONUNBUFFERED 1
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

WORKDIR /app
COPY ./app .

