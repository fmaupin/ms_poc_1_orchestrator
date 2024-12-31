
## projet orchestrator

L'objectif de ce projet est la définition et l'exécution des images des projets.

Les images sont stockées dans le GitHub Container Registry.

Le projet porte sur l'utilisation d'orchestrateur d'images tels que **docker compose** et **kubernetes**.

***

Pour plus d'informations sur les images :

* pour le micro-service : [ms_poc_1](https://github.com/fmaupin/ms_poc_1).

* pour le paramètrage du broker : [ms_poc_1_rabbitMQ](https://github.com/fmaupin/ms_poc_1_rabbitMQ).

***

### Puller et exécuter images via Docker Compose

1. Authentifiez-vous auprès de GitHub Container Registry et exécutez les services :

```
./run_services.sh <GITHUB_USERNAME> <GITHUB_TOKEN>
```

***

### Auteur

Ce projet a été créé par Fabrice MAUPIN.

***

### License

GNU General Public License v3.0

See [LICENSE](  https://github.com/fmaupin/ms_poc_1_rabbitMQ/blob/master/LICENSE  ) to see the full text.



