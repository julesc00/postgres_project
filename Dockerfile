# Pull base image
FROM python:3.7

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /postgresql_project

# Install dependencies
COPY Pipfile Pipfile.lock /postgresql_project/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /postgresql_project/
