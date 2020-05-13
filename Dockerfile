FROM debian:stable-slim

RUN apt update && apt install -y python3 python3-pip && rm -rf /var/lib/apt/lists

COPY app/ /app

RUN pip3 install -r /app/requirements.txt

WORKDIR /app

CMD gunicorn -w 4 --bind 0.0.0.0:8080 wsgi
