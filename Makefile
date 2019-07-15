include .env


.PHONY: install-le-client
install-le-client:
	sudo sh scripts/letsencrypt_install.sh ${SSL_EMAIL} ${DOMAIN};

.PHONY: renew-le-cert
renew-le-cert:
	sudo sh scripts/letsencrypt_renew.sh ${SSL_EMAIL} ${DOMAIN};

.PHONY: start
start:
	@docker-compose stop;
	@docker-compose build;
	@docker-compose up -d;

.PHONY: stop
stop:
	@docker-compose stop;

.PHONY: cleanup
cleanup:
	@docker rm $(shell docker ps -qa --no-trunc --filter "status=exited");
	@docker rmi $(shell docker images --filter "dangling=true" -q --no-trunc);
