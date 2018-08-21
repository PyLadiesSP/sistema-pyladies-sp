# Sistema Pyladies SP

Sistema de Controle PyLadies SP

## Usando docker
Use docker e não precisa instalar o Postgres localmente.

### Dependências:

- [Docker](https://docs.docker.com/install/)
- [docker-compose](https://docs.docker.com/compose/install/)
- make

### Como usar:

Build dos containers:
```
make dev_compose_build
```

Variáveis de ambiente (.envs/.local/):

.django:
```
USE_DOCKER=yes
REDIS_URL=redis://localhost:6379
DJANGO_SECRET_KEY=<your-secret-key>
```

.postgres:
```
POSTGRES_HOST=postgres
POSTGRES_PORT=5432
POSTGRES_DB=sistema_pyladies_sp
POSTGRES_USER=postgres
POSTGRES_PASSWORD=<your-password>
```

Inicialização da aplicação:
```
make dev_compose_up
make dev_compose_migrations
make dev_compose_migrate
make dev_compose_compilemessages
```

Para criar um super usuário:
```
make dev_compose_createsuperuser
```

Para testar, acesse: [http://0.0.0.0:8000/]
