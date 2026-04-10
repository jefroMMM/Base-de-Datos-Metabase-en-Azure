# Business Intelligence Lab - Online Retail

## Descripción
Se implementó un laboratorio funcional de Business Intelligence en Azure usando una VPS Linux con Docker, PostgreSQL y Metabase.

## Arquitectura
- Azure VPS Ubuntu Server 24.04 LTS
- Docker y Docker Compose
- PostgreSQL en contenedor
- Metabase en contenedor

## Dataset
Se utilizó el dataset público Online Retail en formato CSV.

## Servicios
- PostgreSQL: puerto 5432
- Metabase: puerto 3000

## Levantar contenedores
```bash
docker-compose up -d