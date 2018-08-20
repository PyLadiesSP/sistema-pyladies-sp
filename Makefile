export PROJECT_DIR = sistema_pyladies_sp

# -- Docker Commands --
dev_compose_build:
	@docker-compose -f $(PROJECT_DIR)/local.yml build

dev_compose_up:
	@docker-compose -f $(PROJECT_DIR)/local.yml up -d

dev_compose_ps:
	@docker-compose -f $(PROJECT_DIR)/local.yml ps

dev_compose_logs:
	@docker-compose -f $(PROJECT_DIR)/local.yml logs

dev_compose_exec_django_bash:
	@docker-compose -f $(PROJECT_DIR)/local.yml exec django sh

dev_compose_migrate:
	@docker-compose -f $(PROJECT_DIR)/local.yml run --rm django python manage.py migrate

dev_compose_migrations:
	@docker-compose -f $(PROJECT_DIR)/local.yml run --rm django python manage.py makemigrations

dev_compose_makemessages:
	@docker-compose -f $(PROJECT_DIR)/local.yml run --rm django django-admin makemessages -a

dev_compose_compilemessages:
	@docker-compose -f $(PROJECT_DIR)/local.yml run --rm django django-admin compilemessages

dev_compose_createsuperuser:
	@docker-compose -f $(PROJECT_DIR)/local.yml run --rm django python manage.py createsuperuser

dev_compose_shell:
	@docker-compose -f $(PROJECT_DIR)/local.yml run --rm django python manage.py shell
