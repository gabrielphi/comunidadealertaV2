FROM python:3.10.2-slim

WORKDIR /opt/docker

COPY requirements.txt .
RUN apt-get update && apt-get install -y build-essential default-libmysqlclient-dev 
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8000
CMD gunicorn --bind=0.0.0.0:8000 --reload comunidadealertaV2.wsgi:application