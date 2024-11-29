# Instructions pour l'utilisation de Docker sur Mac

## Problème de permissions lors du montage de volumes

Lorsque vous montez le volume `//var/run/docker.sock:/var/run/docker.sock` dans votre fichier `docker-compose.yml`, il peut y avoir des problèmes de permissions. En effet, les droits d'accès au dossier monté ne sont pas automatiquement attribués comme prévu.

### Étapes à suivre

1. **Lancer Docker Compose**  
   Exécutez votre configuration Docker Compose comme d'habitude :

   ```bash
   docker-compose up
   ```

2. **Accéder au conteneur avec les droits root**  
   Si vous rencontrez des problèmes de permissions, vous devez entrer dans le conteneur avec les droits root. Utilisez la commande suivante, en remplaçant `1eedf1cd26a0` par l'ID de votre conteneur :

   ```bash
   docker exec -it --user root 1eedf1cd26a0 /bin/bash
   ```

3. **Modifier les permissions du socket Docker**  
   Une fois à l'intérieur du conteneur, exécutez la commande suivante pour changer les permissions du socket Docker :
   ```bash
   chmod 777 /var/run/docker.sock
   ```

### Remarques

- **Sécurité** : Changer les permissions à `777` donne un accès complet à tous les utilisateurs. Cela peut poser des problèmes de sécurité. Il est recommandé de restreindre les permissions autant que possible en fonction de vos besoins.
- **Alias de dossier** : Si vous utilisez un alias de dossier pour projeter les droits du dossier réellement visé, assurez-vous que cet alias est correctement configuré avant de monter le volume.

### Conclusion

Ces étapes devraient vous permettre de résoudre les problèmes de permissions liés au montage de volumes dans Docker sur Mac. Assurez-vous de suivre les meilleures pratiques de sécurité lors de la gestion des permissions.
