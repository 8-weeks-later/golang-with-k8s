
all: run

run: codegen
	@echo "Running Server"
	./tools/api-server/make-server.sh

docs:
	@echo "Generating docs..."
	./tools/swagger/buildDocs.sh

codegen: docs
	@echo "Generating code..."
	oapi-codegen -package api_server -generate types,server api/_build/api-server.yaml > generated/api_server/server.gen.go 
	oapi-codegen -package api_server -generate client api/_build/api-server.yaml > generated/api_server/client.gen.go 
