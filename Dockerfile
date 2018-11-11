 FROM python:3
 ENV PYTHONUNBUFFERED 1
 RUN mkdir /django-docker-compose
 WORKDIR /django-docker-compose
 ADD requirements.txt /django-docker-compose/
 RUN pip install -r requirements.txt
 ADD . /django-docker-compose/
