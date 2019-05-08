FROM femtopixel/google-lighthouse

USER root

RUN npm install -g lighthouse-ci

WORKDIR /app

ENTRYPOINT []
