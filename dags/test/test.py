from airflow import DAG
from airflow.providers.docker.operators.docker import DockerOperator
from datetime import datetime

# Définir le DAG
dag = DAG(
    'dbt_marketplace_dag',  # Nom du DAG
    description='Un DAG pour exécuter dbt dans Docker',
    schedule_interval=None,  # Aucun planning (à lancer manuellement ou via un trigger)
    start_date=datetime(2024, 11, 28),  # Date de début
    catchup=False  # Pas de backfill pour les dates passées
)

# Définir le DockerOperator
dbt_run_task = DockerOperator(
    task_id='run_dbt_models',  # ID de la tâche
    docker_url = "unix:///var/run/docker.sock",
    image='dbt_marketplace_image',  # Image Docker à utiliser
    command='dbt run --models staging_brand',  # Commande à exécuter dans le conteneur
    dag=dag,
    auto_remove=True,  # Supprimer le conteneur après exécution
    network_mode='bridge',  # Mode réseau du conteneur (s'adapte en fonction de votre configuration)
)

# Si vous avez d'autres tâches à ajouter, vous pouvez les définir et les lier
# Exemple de lien de dépendance si vous avez d'autres tâches
# start_task >> dbt_run_task >> end_task
