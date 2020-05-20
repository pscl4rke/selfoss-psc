
DUMMY:
	@echo "make image	Build a docker image called selfoss-psc"
	@echo "make selfoss Unpack the upstream code"

image:
	docker build -t selfoss-psc .

selfoss: selfoss-2.17.zip
	mkdir $@
	unzip -q $< -d $@
