# dbt_marketplace

## Description

`dbt_marketplace` est un projet de transformation de données utilisant dbt (data build tool). Ce projet permet de gérer et de transformer des données provenant de différentes sources, en utilisant des modèles de données, des analyses et des tests pour garantir l'intégrité des données.

## Structure du Projet

Le projet est organisé comme suit :

- **analyses/** : Contient les analyses effectuées sur les données.
- **macros/** : Contient des macros personnalisées pour faciliter les transformations.
- **models/** : Contient les modèles de données, organisés en sous-dossiers pour le staging et le mart.
- **seeds/** : Contient des fichiers de données statiques à charger dans la base de données.
- **snapshots/** : Contient des snapshots des données pour le suivi des changements.
- **tests/** : Contient des tests pour valider les modèles de données.
- **profiles.yml** : Fichier de configuration pour les connexions à la base de données.
- **Dockerfile** : Fichier pour construire l'image Docker du projet.

## Installation

1. Installez les dépendances dans un environnement virtuel :

   ```bash
   pip install -r requirements.txt
   ```

2. Configurez votre fichier `profiles.yml` avec les informations de connexion à votre base de données.

## Utilisation

Pour exécuter les transformations de données, utilisez les commandes dbt suivantes :

- Pour exécuter tous les modèles :

  ```bash
  dbt run
  ```

- Pour exécuter les tests :

  ```bash
  dbt test
  ```

- Pour générer la documentation :
  ```bash
  dbt docs generate
  dbt docs serve
  ```

## Docker

Pour construire l'image Docker du projet, exécutez la commande suivante à la racine du projet :

```bash
docker build -t dbt_marketplace_image:latest .
```

A la racine du projet, lancer la commande ci-dessus pour build l'image docker du projet dbt_marketplace qui sera utilisée pour le container docker airflow avec dockerOperator dans un DAG airflow.
