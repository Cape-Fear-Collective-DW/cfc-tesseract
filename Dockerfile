FROM datawheelorg/tesseract:8a809348-commit

ARG APP_ROOT /app

ENV SCHEMA_PATH ${APP_ROOT}/schema.xml
COPY ./schema.xml ${SCHEMA_PATH}

# set schema path env var here, and set the rest when running container
#  so that the image does not have to be rebuilt for different environments
ENV TESSERACT_SCHEMA_FILEPATH ${SCHEMA_PATH}

EXPOSE 7777

CMD ["tesseract-olap", "-a", "0.0.0.0:7777"]