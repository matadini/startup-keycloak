export $(grep -v '^#' .env | xargs) && \
docker build --build-arg ADMIN_USERNAME=$ADMIN_USERNAME --build-arg ADMIN_PASSWORD=$ADMIN_PASSWORD -t matadini/startup-keycloak:latest .
