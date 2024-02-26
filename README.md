This project is created for the learning purpose of GoLang with Postgres installed in Docker, handling basic DB operations.

Below are described few commands to use this project. 

**Pre requisites:
  * Go must be installed and configured GOPATH directory in your system.
  * Migrate package must be installed and configured.
  * sqlc package must be installed and configured.
  * Docker must be installed in your system.

To Download / start Postgres DB server using Docker: 
  ** make postgres

To create db structure:
  ** make createdb

To drop DB structure:
  ** make dropdb

To migrage / update DB structure:
  **  make migrateup
  ** make migratedown

CRUD DB operation:
  ** sqlc generate
  

To Create DB structure
