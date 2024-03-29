FROM node:10-alpine

RUN mkdir -p /app

# invalidate cache
RUN uptime

COPY . /app

WORKDIR /app

RUN npm install

ENV MATERIA_MODE production

EXPOSE undefined
CMD ["npm", "start"]