build:
	@docker-compose -p jenkins build
run:
	@docker-compose -p jenkins up -d nginx master proxy db
stop:
	@docker-compose -p jenkins down
clean-data:
	@docker-compose -p jenkins down -v
clean-images:
	@docker rmi `docker images -q -f "dangling=true"`
status:
	@docker-compose -p jenkins ps
jenkins-log:
	@docker-compose -p jenkins exec master tail -f /var/log/jenkins/jenkins.log
