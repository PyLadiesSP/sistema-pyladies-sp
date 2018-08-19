# Sistema Pyladies SP

Sistema de Controle PyLadies SP

## Usando docker
Use docker e não precisa instalar o Postgres localmente.

### Dependências:

- docker
- docker-compose
- make

### Como usar:

Configuração da aplicação:
```
make dev_compose_build
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
