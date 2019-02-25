FROM ubuntu

RUN apt-get update && apt-get install npm -y

RUN npm install -g dynamodb-replicator


