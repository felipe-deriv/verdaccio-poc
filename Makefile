all: publish build install

publish:
	docker compose run -it --rm publisher

build:
	docker compose build my_service

install:
	docker compose up my_service

clear:
	docker compose down --rmi local --remove-orphans

clear_all:
	docker compose down --rmi local --remove-orphans --volumes

logs:
	docker compose logs -f
