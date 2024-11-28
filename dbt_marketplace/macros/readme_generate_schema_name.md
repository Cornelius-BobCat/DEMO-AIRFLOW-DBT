# Documentation de la Macro `generate_schema_name`

## Description

La macro `generate_schema_name` est utilisée pour générer un nom de schéma dans un projet dbt. Elle permet de définir un schéma personnalisé ou d'utiliser le schéma par défaut si aucun schéma personnalisé n'est fourni.

## Paramètres

- **custom_schema_name** (string ou None) : Le nom de schéma personnalisé à utiliser. Si ce paramètre est `None`, la macro utilisera le schéma par défaut.
- **node** (object) : L'objet node de dbt, qui peut être utilisé pour accéder à des informations supplémentaires sur le contexte d'exécution.

## Comportement

- Si `custom_schema_name` est `None`, la macro renvoie le schéma par défaut défini par `target.schema`.
- Si `custom_schema_name` est fourni, la macro renvoie ce nom de schéma après l'avoir nettoyé des espaces superflus.
