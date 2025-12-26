# Официальный образ Node.js как базовый образ
FROM node:16-alpine

# Рабочая директория
WORKDIR /app

# Коипируем package.json и package-lock.json   в рабочую директорию
COPY package*.json ./

# Устанавливаем пакеты
RUN npm install

# Копируем весь код приложения в рабочую директорию
COPY . .

# Собираем приложение для production
RUN npm run build

# Устанавливаем переменнык окружения
ENV NODE_ENV=production

ENV PORT=3000

EXPOSE ${PORT}

CMD ["npx", "serve", "-s", "dist", "-l", "3000"]