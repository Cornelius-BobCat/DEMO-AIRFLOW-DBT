# Documentation pour l'utilisation de Docker avec Airflow

## Accéder au conteneur Airflow

Pour accéder à un conteneur Docker exécutant Airflow, vous pouvez utiliser la commande suivante :

```bash
docker exec -it 227f10fd718f bash
```

Cela devrait retourner :

```
airflow
```

Pour obtenir plus d'informations sur l'utilisateur, vous pouvez utiliser la commande :

```bash
id
```

Cela affichera des informations sur l'UID et le GID, par exemple :

```
uid=50000(airflow) gid=50000 groups=50000
```

### Explication de la commande

- `docker exec`: Cette commande permet d'exécuter une commande dans un conteneur en cours d'exécution.
- `-it`: Ces options permettent d'exécuter le conteneur en mode interactif et d'allouer un pseudo-terminal.
- `227f10fd718f`: C'est l'ID du conteneur que vous souhaitez accéder. Remplacez-le par l'ID de votre conteneur si nécessaire.
- `bash`: Cela ouvre un shell Bash à l'intérieur du conteneur.

### Vérification de l'utilisateur

Une fois à l'intérieur du conteneur, vous pouvez vérifier l'utilisateur courant avec la commande suivante :

```bash
whoami
```

Cela devrait retourner :

```
airflow
```

Pour obtenir plus d'informations sur l'utilisateur, vous pouvez utiliser la commande :

```bash
id
```

Cela affichera des informations sur l'UID et le GID, par exemple :

```
uid=50000(airflow) gid=50000 groups=50000
```

docker --host=unix:///var/run/docker.sock info
