#!/usr/bin/env bash

start:
	docker-compose up -d

restart:
	docker-compose stop
	sleep 10
	docker-compose rm -f
	docker-compose build
	docker-compose up -d

stop:
	docker-compose stop

rm:
	docker-compose stop
	sleep 10
	docker-compose rm -f
