FROM python:3.10-alpine
COPY requirements.txt /app/requirements.txt
WORKDIR /app/
USER root
RUN pip install -r requirements.txt
RUN adduser --disabled-password --gecos '' user
USER user
