
# Docker Tasks
#
build-osg-auth:
	docker build -t osg_authentication osg_authentication

build-osg-auth-nc:
	docker build --no-cache -t osg_authentication osg_authentication

push-all:
	docker tag osg_authentication bjwhitefnal/osg_authentication
	docker push bjwhitefnal/osg_authentication
