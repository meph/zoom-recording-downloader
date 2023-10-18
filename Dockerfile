FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

RUN chmod +x /app/zoom-recording-downloader.py

ENTRYPOINT [ "/app/zoom-recording-downloader.py" ]