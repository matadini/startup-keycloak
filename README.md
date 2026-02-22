# Keycloak Custom Develop Image

## How to build
Use the `docker-build.sh` script to build an image with the development configuration.
Before running the build, you can override the admin name and password in the .env file.

## How to launch
1. Use the `docker-compose.yml` file to run the built image eg. `docker compose up -d`
2. Open your browser and visit: http://localhost:7080/admin 
