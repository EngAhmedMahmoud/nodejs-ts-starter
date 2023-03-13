FROM node:16-alpine3.14
WORKDIR /app
COPY package*.json ./
RUN yarn install --only=production
COPY . .
RUN yarn run build

EXPOSE 3000

# Start the application
CMD ["yarn", "start"]
