FROM node:16
RUN node -v && npm -v
RUN npm install -g nodemon
WORKDIR /home/app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["nodemon", "index.js"]