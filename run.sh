#!/bin/bash
set -e

if [[ -n "$(docker ps -qaf 'name=firefox')" ]]; then
	docker restart firefox
else
	USER_UID=$(id -u)
	xhost +local:docker
	docker run --rm \
		--env=DISPLAY \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v /run/user/$USER_UID/pulse:/run/pulse \
		--name firefox \
		firefox-docker
fi
