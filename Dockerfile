FROM node:16
# Verify node and npm installation
RUN node -v && npm -v
RUN npm install -g nodemon
# Set working directory
WORKDIR /home/app
COPY . .
RUN npm install
EXPOSE 3000
# Run application with nodemon
CMD ["nodemon", "index.js"]
