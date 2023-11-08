package main

import (
	ApiServer "golang-with-k8s/cmd/api-server/internal"
	api_server "golang-with-k8s/generated/api-server"

	//database 초기화
	_ "golang-with-k8s/pkg/database"

	"github.com/labstack/echo-contrib/echoprometheus"
	"github.com/labstack/echo/v4"
)

func main() {

	e := echo.New()
	//logger
	// e.Use(echomiddleware.Logger())

	server := ApiServer.NewServer()

	api_server.RegisterHandlers(e, server)

	e.Use(echoprometheus.NewMiddleware("myapp"))   // adds middleware to gather metrics
	e.GET("/metrics", echoprometheus.NewHandler()) // adds route to serve gathered metrics

	e.Logger.Fatal(e.Start(":10001"))
}
