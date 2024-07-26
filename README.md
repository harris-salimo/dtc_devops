# Vue 3 + TypeScript + Vite

Projet frontend.

## Deploiement

- Installez Jenkins selon cette [instruction](https://www.jenkins.io/doc/book/installing/docker/)

- Créez 2 containers pour constituer un cluster

```bash
docker run -d --privileged --name manager docker:dind
docker run -d --privileged --name worker docker:dind
```

- Dans manager, initialisez swarm

```bash
docker exec -it manager sh
docker swarm init
# copier la commande donnée pour joindre le worker
```

- Joinez le worker au manager

```bash
docker exec -it worker sh
# coller la commande copiée et lancez
```

- Configurez un environnement comme indiqué dans le fichier [configuration.pdf](./configuration.pdf)

- Lancez le build depuis votre interface admin jenkins
