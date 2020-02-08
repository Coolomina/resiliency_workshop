build:
	docker-compose build

up:
	docker-compose up -d

clean:
	docker-compose down

shell:
	docker-compose exec app sh

toxi:
	docker-compose exec toxi sh

populate:
	docker-compose exec app rake toxiproxy:populate
	docker-compose exec app rake redis:populate

install_deps:
	docker-compose run --rm app bundle install -j 8