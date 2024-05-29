FROM python:3.11-slim

ENV TZ=Europe/Paris
ENV APP_NAME=follow_me

USER root

COPY dist/${APP_NAME}-*-py3-none-any.whl /app/
RUN pip install -vvv --no-cache-dir /app/${APP_NAME}-*-py3-none-any.whl

# cleanup
RUN rm -rf /app/*

USER 1001

#ENTRYPOINT run the server
