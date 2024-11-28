# Base image : Choisissez une image légère avec Python
FROM python:3.9-slim

# Mettre à jour l'image et installer les dépendances système nécessaires
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Installer dbt-core et d'autres packages dbt nécessaires
RUN pip install --upgrade pip
RUN pip install dbt-core dbt-postgres

# Créer un répertoire pour ton projet dbt
WORKDIR /usr/app/dbt_marketplace

# Copier les fichiers de ton projet dbt dans l'image
COPY ./dbt_marketplace /usr/app/dbt_marketplace

# Définir les variables d'environnement nécessaires
ENV DBT_PROFILES_DIR=/usr/app/dbt_marketplace/profiles
