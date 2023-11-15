package main

import (
	"golang-with-k8s/cmd/api-server/internal"
	"golang-with-k8s/generated/api_server"

	//database 초기화
	"golang-with-k8s/pkg/config"
	_ "golang-with-k8s/pkg/database"

	"github.com/gorilla/sessions"
	"github.com/labstack/echo-contrib/echoprometheus"
	"github.com/labstack/echo-contrib/session"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

func main() {

	e := echo.New()
	//logger
	// e.Use(echomiddleware.Logger())

	server := internal.NewServer()
	api_server.ApiServerRegisterHandlers(e, server)

	//cors
	e.Use(middleware.CORSWithConfig(middleware.DefaultCORSConfig))

	// middlewares
	// prometheus
	e.Use(echoprometheus.NewMiddleware("myapp")) // adds middleware to gather metrics
	// session
	e.Use(session.Middleware(sessions.NewCookieStore([]byte(config.ConfigInstance.Get("SESSION_SECRET")))))
	// jwt
	// e.Use(echojwt.WithConfig(echojwt.Config{
	// 	SigningKey: []byte(config.ConfigInstance.Get("JWT_SECRET")),
	// }))

	e.GET("/metrics", echoprometheus.NewHandler()) // adds route to serve gathered metrics

	e.Logger.Fatal(e.Start(":10001"))
}
