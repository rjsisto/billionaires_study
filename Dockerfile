FROM python:latest

RUN apt-get update && apt-get upgrade -y

RUN pip install --upgrade pip

COPY /docker/requirements.txt /
COPY /config/config.toml /project/

RUN pip install -r /requirements.txt

EXPOSE 8888

COPY docker/docker-entrypoint.sh /
RUN chmod +x ./docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
