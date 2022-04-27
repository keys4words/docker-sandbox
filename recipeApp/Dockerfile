FROM python:3.7.3-slim
ENV PUTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY ./app .