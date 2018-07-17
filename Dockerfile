FROM node:8
WORKDIR /usr/src/app
COPY . .
RUN cd app/test && npm install
RUN npm install
RUN cd client/ && npm install && npm run build
EXPOSE 8080
CMD ["npm", "start", ">>logs/console/console.log-'$(date +%Y-%m-%d)'", "2>&1", "&"]