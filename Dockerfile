FROM quay.io/keycloak/keycloak:22.0.1

WORKDIR /app

COPY ./master-realm.json ./opt/keycloak/data/import/master-realm.json



ENV KC_DB_USERNAME=admin
ENV KC_DB_PASSWORD=admin
ENV KC_HOSTNAME=localhost
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
#CMD "/opt/keycloak/bin/kc.sh start"