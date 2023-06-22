# DE-Docker-v.2
## Другое исполнение задания по созданию Docker-контейнера;

### Описание наполнения файла Docker-compose:
version: 'Указатель версии D-C'(можно проверить Docker-compose -v)
services:(Подключенные БД или приложения)
  db:
    image: postgres:latest (Образ)
    restart: always
    ports:(указание портов)
      - "5432:5432"
    volumes:(указание томов для БД и файла джуна)
      - ../init.sql:/docker-entrypoint-initdb.d/init.sql
      - ./app/data/:/var/lib/postgresql/data/
    environment:(назовем это конфигурацией)
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: postgres
      POSTGRES_DB: testdb
    healthcheck:(Отладчик)
      test: ["CMD", "pg_isready", "-U", "postgres"]
      interval: 5s
      retries: 5

### P.S DOCKER-COMPOSE КОМАНДЫ:
```sh
docker compose ps
docker compose up –d
docker compose stop
docker compose rm
docker compose down (== stop & rm)
docker compose logs -–tail=100 –f 
 ```