FROM python:3.9-slim

WORKDIR /app

COPY requirement.txt

RUN pip install -r requirement.txt

COPY ./app/main.py

RUN uvicorn main:app --reload --port=8000


