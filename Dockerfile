FROM python:2

ARG APP_DIR

WORKDIR /usr/src/app/

COPY $APP_DIR .

RUN pip install --no-cache-dir -r requirements.txt

CMD python ./proxy.py

