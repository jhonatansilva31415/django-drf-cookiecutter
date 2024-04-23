FROM python:3.11

RUN apt-get update \
    && apt-get -y install libpq-dev gcc netcat-openbsd postgresql
    
WORKDIR /cookiecutter
RUN pip install poetry

COPY pyproject.toml .
RUN poetry config virtualenvs.create false
RUN poetry install --no-interaction --no-ansi

COPY . .