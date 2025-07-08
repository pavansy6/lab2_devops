FROM python:3.10

LABEL maintainer="Pavan Yadav"
LABEL lab="Lab 2 - Docker"

ARG ENVIRONMENT=development

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD echo "Environment: $ENVIRONMENT" && python main.py