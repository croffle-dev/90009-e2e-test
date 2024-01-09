FROM mcr.microsoft.com/playwright:v1.40.0-jammy

WORKDIR /app

COPY . /app/

RUN npm install

CMD ["npm", "run", "test"]
