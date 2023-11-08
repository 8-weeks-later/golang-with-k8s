
all: run

run: 
	@echo "Running Server"
	./tools/api-server/make-server.sh

docs:
	@echo "Generating docs..."
	./tools/swagger/buildDocs.sh

codegen: docs
	@echo "Generating code..."
	oapi-codegen -package api_server -generate types,server api/_build/api-server.yaml > generated/api-server/server.gen.go 
	oapi-codegen -generate client api/_build/api-server.yaml > generated/codegen/client.gen.go 
