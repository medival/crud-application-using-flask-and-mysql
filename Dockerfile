FROM python:3.8-alpine

WORKDIR /app
COPY source_code/ /app

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python", "server.py"]
