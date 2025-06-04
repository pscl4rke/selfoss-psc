
buildtag := latest
#buildtag := test

docker != first-path-of-go /usr/bin/podman /usr/bin/docker

DUMMY:
	@echo "make image	Build a docker image called selfoss-psc"
	@echo "make selfoss Unpack the upstream code"

image:
	$(docker) build -t selfoss-psc:$(buildtag) .

run:
	$(docker) run --rm -it -p 8000:80 selfoss-psc:$(buildtag)

selfoss: selfoss-2.18.zip
	mkdir $@
	unzip -q $< -d $@
