FROM python:3.12-rc-slim-buster

WORKDIR /app

ADD . .

RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt

ADD . .

EXPOSE 8080

CMD ["python", "app.py"]
