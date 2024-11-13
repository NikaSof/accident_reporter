FROM ubuntu:latest
LABEL authors="wbor7"

ENTRYPOINT ["top", "-b"]

FROM node:14

# Установка зависимостей
WORKDIR /app
COPY package*.json ./
RUN npm install

# Копирование кода приложения
COPY . .

# Установка переменных окружения
ENV NODE_ENV=production

# Команда для запуска приложения
CMD ["npm", "run", "serve"]