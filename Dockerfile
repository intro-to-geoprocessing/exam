FROM python:3.8-slim-buster

WORKDIR /code

# System deps:
RUN apt-get update && apt-get install -y libspatialindex-dev

# Python deps:
COPY requirements.txt /code
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . /code


