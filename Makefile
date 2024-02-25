postgres:
	docker run --name postgres_16 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=root -d postgres:16-alpine

createdb:
	docker exec -it postgres_16 createdb --username=root --owner=root simple_bank

dropdb:
	docker exec -it postgres_16 dropdb simple_bank

migrateup:
	migrate -path db/migration/ -database "postgresql://root:root@localhost:5432/simple_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration/ -database "postgresql://root:root@localhost:5432/simple_bank?sslmode=disable" -verbose down

sqlc:
	sqlc generate

.PHONY: postgres createdb dropdb migrateup migratedown sqlc