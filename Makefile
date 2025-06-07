tests:
	mvn test

build: 
	mvn clean
	mvn package

run:
	mvn spring-boot:run

c_build:
	docker build -t java-ping .

c_run_it:
	docker run -it java-ping /bin/bash

c_run: 
	docker run -p 8080:8080 java-ping