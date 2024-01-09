FROM mcr.microsoft.com/playwright:v1.40.0-jammy

WORKDIR /app

COPY . /app/

RUN npm ci

RUN npx playwright install --with-deps

CMD ["npx", "playwright", "test"]
