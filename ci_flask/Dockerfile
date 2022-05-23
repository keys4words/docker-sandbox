FROM python:3.7.3-slim as base
WORKDIR /app
COPY app/. .
RUN pip install --upgrade pip && pip install -r requirements.txt

FROM base as tests
ENV REPORTS_FOLDER=./test_reports
VOLUME /data
COPY tests/. .
CMD ["/bin/sh","/app/tester.sh"]

FROM base as debug
COPY debug/. .
CMD ["python", "-m", "pdb", "factors_flask.py"]

FROM base as prod
CMD ["python","factors_flask.py"]