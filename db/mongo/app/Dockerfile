FROM python:3.7.3-slim as base
WORKDIR /app
COPY app/. .
RUN pip install --upgrade pip && pip install -r requirements.txt
CMD ["python","app.py"]