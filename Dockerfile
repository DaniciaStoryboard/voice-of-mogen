FROM python:3.12-rc-slim-buster

WORKDIR /app

ENV FLASK_APP=app:create_app
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=8080

ADD . .

RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt

ADD . .

EXPOSE 8080

CMD ["flask", "run"]
