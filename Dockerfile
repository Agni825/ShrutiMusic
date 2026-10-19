FROM nikolaik/python-nodejs:python3.10-nodejs20

RUN apt-get update && apt-get install -y ffmpeg

COPY . /app/
WORKDIR /app/

RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["sh", "-c", "python3 -m http.server 10000 & python3 -m ShrutiMusic"]
