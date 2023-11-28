FROM python:3.8-alpine

WORKDIR /app

COPY source_code/ /app

# uncomment for local purpose test
# ENV MYSQL_HOST phonebook-mysql
# ENV MYSQL_DATABASE crud_flask
# ENV MYSQL_USER dev
# ENV MYSQL_PASSWORD dev

RUN pip install -r requirements.txt

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "server:app"]
