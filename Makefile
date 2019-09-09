
# Docker Tasks
#
build-all:
	docker build -t osg_authentication_base osg_authentication_base
	docker build -t osg_authentication osg_authentication

build-osg-auth-base:
	docker build -t osg_authentication_base osg_authentication_base

build-osg-auth:
	docker build -t osg_authentication osg_authentication

build-osg-auth-base-nc:
	docker build --no-cache -t osg_authentication_base osg_authentication_base

build-osg-auth-nc:
	docker build --no-cache -t osg_authentication osg_authentication

push-all:
	docker tag osg_authentication_base bjwhitefnal/osg_authentication_base
	docker push bjwhitefnal/osg_authentication_base
	docker tag osg_authentication bjwhitefnal/osg_authentication
	docker push bjwhitefnal/osg_authentication
