FROM python:3.8-alpine

WORKDIR /app

COPY source_code/ /app

# uncomment for local purpose test
# ENV MYSQL_HOST phonebook-mysql
# ENV MYSQL_DATABASE crud_flask
# ENV MYSQL_USER dev
# ENV MYSQL_PASSWORD dev

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "server.py"]
