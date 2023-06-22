# DE-Docker-v.2
## Другое исполнение задания по созданию Docker-контейнера;

### Описание наполнения файла Docker-compose:

# version: 'Указатель версии D-C'(можно проверить Docker-compose -v)

# services:(Подключенные БД или приложения)

# image: postgres:latest (Образ)

# ports:(указание портов)

# volumes:(указание томов для БД и файла джуна)
- ../init.sql:/docker-entrypoint-initdb.d/init.sql
- ./app/data/:/var/lib/postgresql/data/

# environment:(назовем это конфигурацией)
- POSTGRES_USER: postgres
- POSTGRES_PASSWORD: postgres
- POSTGRES_DB: testdb

### P.S DOCKER-COMPOSE КОМАНДЫ:
```sh
docker compose ps
docker compose up –d
docker compose stop
docker compose rm
docker compose down (== stop & rm)
docker compose logs -–tail=100 –f 
 ```
