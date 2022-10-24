FROM python:3.8-slim-buster
RUN pip3 install flask flask_cors requests
WORKDIR /usr/src/app
COPY ./sqlite.py /usr/src/app/sqlite.py
CMD python3 /usr/src/app/sqlite.py

