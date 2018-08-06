export PROJECT_DIR = sistema_pyladies_sp

# -- Docker Commands --
dev_compose_build:
	@docker-compose -f $(PROJECT_DIR)/local.yml build

dev_compose_up:
	@docker-compose -f $(PROJECT_DIR)/local.yml up -d

dev_compose_stop:
	@docker-compose -f $(PROJECT_DIR)/local.yml stop

dev_compose_ps:
	@docker-compose -f $(PROJECT_DIR)/local.yml ps

dev_compose_migrate:
	@docker-compose -f $(PROJECT_DIR)/local.yml run --rm django python manage.py migrate

dev_compose_createsuperuser:
	@docker-compose -f $(PROJECT_DIR)/local.yml run --rm django python manage.py createsuperuser

dev_compose_shell:
	@docker-compose -f $(PROJECT_DIR)/local.yml run --rm django python manage.py shell

