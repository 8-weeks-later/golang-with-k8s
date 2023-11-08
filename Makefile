
all: run

run: 
	@echo "Running Server"
	./tools/api-server/make-server.sh

docs:
	@echo "Generating docs..."
	./tools/swagger/buildDocs.sh

codegen: docs
	@echo "Generating code..."
	oapi-codegen -generate types,server api/_build/api-server.yaml > generated/codegen/server.gen.go 
