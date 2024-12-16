#!/bin/bash
echo "Démarrage des services Docker..."
docker compose up -d && \

echo "Permission sur le socket Docker..."; 
docker exec -it --user root demo-airflow-dbt-airflow-webserver-1 /bin/bash -c "chmod 777 /var/run/docker.sock; exit" && \

echo "Accès au conteneur PostgreSQL..."; 
docker exec -it postgres_data bash -c "echo 'Changement de répertoire vers init...'; cd init && psql postgres://marketplace_user:marketplace_password@localhost:5432/marketplace -f load.sql -v current_dir=\$(pwd) && exit";
