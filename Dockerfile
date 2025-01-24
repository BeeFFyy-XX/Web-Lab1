FROM node:16

# Устанавливаем рабочую директорию
WORKDIR /app

# Устанавливаем сервер serve
RUN npm install -g serve

# Копируем файлы проекта
COPY . /app

# Открываем порт
EXPOSE 8080

# Запускаем сервер
CMD ["serve", "-s", ".", "-p", "8080"]
