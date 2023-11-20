package main

import (
	apiServer "golang-with-k8s/cmd/apiserver"
	_ "golang-with-k8s/pkg/database"
)

func main() {
	apiServer.Start()
}
