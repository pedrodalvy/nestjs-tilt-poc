up:
	docker compose up -d app_dev
.PHONY: app_local

up_prod:
	docker compose up -d app_prod
.PHONY: app_prod

down:
	docker compose rm -f -s -v
.PHONY: down
