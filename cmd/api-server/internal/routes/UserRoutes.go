package routes

import (
	"golang-with-k8s/cmd/api-server/internal/controllers"

	"github.com/labstack/echo/v4"
)

func InitUserRoutes(e *echo.Echo) {
	e.POST("/users", controllers.CreateUser)
	e.GET("/users/:id", controllers.GetUser)
	e.PUT("/users/:id", controllers.UpdateUser)
	e.DELETE("/users/:id", controllers.DeleteUser)
}
