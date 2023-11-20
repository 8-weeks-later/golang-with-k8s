package apiServer

import (
	"github.com/gorilla/sessions"
	"github.com/labstack/echo-contrib/echoprometheus"
	"github.com/labstack/echo-contrib/session"
	"github.com/labstack/echo/v4/middleware"
	controller2 "golang-with-k8s/cmd/apiserver/controller"
	"golang-with-k8s/generated/api_server"
	"golang-with-k8s/pkg/config"
)

type Server struct {
	controller2.AuthController
	controller2.CategoryController
	controller2.HomeController
	controller2.MenteeFeedbackController
	controller2.MentorFeedbackController
	controller2.MentorProfileController
	controller2.HashtagController
	controller2.ReservationController
	controller2.UserController
	controller2.SearchController
}

func Start() {
	server := &Server{}
	api_server.ApiServerRegisterHandlers(e, server)

	//logger
	// e.Use(echomiddleware.Logger())

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
