FROM ubuntu:latest
# Обновляем пакеты и устанавливаем необходимые утилиты
RUN apt update && apt install -y python3
# Устанавливаем рабочую директорию
WORKDIR /app
# Копируем файл main.py в контейнер
COPY main.py .
# Запускаем Python-программу при старте контейнера
CMD ["python3", "main.py"]