FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PIP_NO_CACHE_DIR=1

WORKDIR /bot

COPY requirements.txt ./

RUN python -m pip install --upgrade pip && pip install -r requirements.txt

COPY pdfs ./pdfs
COPY *.py ./

ENTRYPOINT ["python", "main.py"]