# Базовый образ можно задать при сборке через --build-arg BASE=
ARG BASE=ubuntu:22.04
FROM ${BASE}

# Передача версии исходников (ветка или тег)
ARG VERSION=main

# Устанавливка пакетов
RUN apt-get update && apt-get install -y python3 python3-venv python3-pip git \
    && rm -rf /var/lib/apt/lists/*

# Задать рабочую директорию
WORKDIR /app

# Клонируем исходники StaticJinjaPlus с нужной версии
RUN git clone https://github.com/apofiz2036/StaticJinjaPlus.git . \
    && git checkout ${VERSION}

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Запускаем
CMD ["python3", "main.py"]
