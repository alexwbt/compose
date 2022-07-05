
# jenkins
build_jenkins:
	docker-compose -f jenkins-compose.yml build

run_jenkins:
	docker-compose -f jenkins-compose.yml pull && \
	docker-compose -f jenkins-compose.yml up -d

stop_jenkins:
	docker-compose -f jenkins-compose.yml stop

restart_jenkins: stop_jenkins run_jenkins

# nginx
run_nginx:
	docker-compose -f nginx-compose.yml pull && \
	docker-compose -f nginx-compose.yml up -d

stop_nginx:
	docker-compose -f nginx-compose.yml stop

restart_nginx: stop_nginx run_nginx

# keycloak
run_keycloak:
	docker-compose -f keycloak-compose.yml pull && \
	docker-compose -f keycloak-compose.yml up -d

stop_keycloak:
	docker-compose -f keycloak-compose.yml stop

restart_keycloak: stop_keycloak run_keycloak

# all
run: run_jenkins run_nginx run_keycloak
stop: stop_jenkins stop_nginx stop_keycloak
restart: restart_jenkins restart_nginx restart_keycloak
