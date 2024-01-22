
buildtag := latest
#buildtag := test

DUMMY:
	@echo "make image	Build a docker image called selfoss-psc"
	@echo "make selfoss Unpack the upstream code"

image:
	docker build -t selfoss-psc:$(buildtag) .

run:
	docker run --rm -it -p 8000:80 selfoss-psc:$(buildtag)

selfoss: selfoss-2.18.zip
	mkdir $@
	unzip -q $< -d $@
