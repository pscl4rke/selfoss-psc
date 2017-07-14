
DUMMY:
	@echo "make image	Build a docker image called selfoss-psc"

image:
	docker build -t selfoss-psc .
