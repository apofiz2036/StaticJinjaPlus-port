# StaticJinjaPlus-port

Этот репозиторий содержит инструкции для сборки Docker-образов StaticJinjaPlus из исходников оригинального проекта https://github.com/apofiz2036/StaticJinjaPlus.

## Сборка образа на базе Ubuntu
```bash
docker build -t staticjinja-plus:ubuntu --build-arg BASE=ubuntu:22.04 .
```

## Сборка образа на базе Python-slim
```bash
docker build -t staticjinja-plus:slim --build-arg BASE=python:3.10-slim .
```

### Указание версии исходников
```bash
docker build -t staticjinja-plus:2.0 --build-arg VERSION=2.0 .
```
