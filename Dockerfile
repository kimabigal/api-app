FROM node:20-alpine
WORKDIR /app/api

# install deps using the api/ package files
COPY api/package*.json ./
RUN npm ci --only=production

# copy the rest of the API source
COPY api/ .

ENV PORT=3000
EXPOSE 3000
CMD ["npm","start"]
