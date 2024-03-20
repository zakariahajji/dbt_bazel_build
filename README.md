## Set-up

You'll need to install [Docker](https://www.docker.com/products/docker-desktop/) for deploying a local PostgreSQL db pre-populated with the 2 tables, as well as a PostgreSQL client to manipulate the data.

Deploy the postgres with

```sh
docker compose -f deploy/docker-compose.yaml up --force-recreate --remove-orphans --build
```

Interact with the data with `psql`

```sh
brew install postgresql
docker exec -it postgresql psql --username admin --dbname postgres_db

```

Clean-up workspace with

```sh
docker compose -f deploy/docker-compose.yaml down -v
```
