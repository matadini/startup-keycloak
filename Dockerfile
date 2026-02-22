from quay.io/keycloak/keycloak:latest
COPY ../import /import

#.env
arg ADMIN_USERNAME
arg ADMIN_PASSWORD

#default config
ENV KC_HOSTNAME_STRICT_BACKCHANNEL="true"
ENV KC_BOOTSTRAP_ADMIN_USERNAME=${ADMIN_USERNAME}
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=${ADMIN_PASSWORD}
ENV KC_HEALTH_ENABLED="true"
ENV KC_METRICS_ENABLED="true"
ENV KC_LOG_LEVEL=info
ENV JAVA_OPTS='-Dkeycloak.migration.action=import \
-Dkeycloak.migration.provider=dir \
-Dkeycloak.migration.dir=/import \
-Dkeycloak.migration.strategy=OVERWRITE_EXISTING'

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port", "7080", "--https-port", "7443"]

#ports
EXPOSE 7080
EXPOSE 7443
EXPOSE 9000
