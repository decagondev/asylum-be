FROM node:16

WORKDIR /app

RUN npm install -g json-server

COPY db.json /app/db.json

EXPOSE 3030

CMD ["json-server", "--watch", "db.json", "--host", "0.0.0.0", "--port", "3030"]
