package main

import (
	"fmt"
	"golang-with-k8s/cmd/api-server/internal/routes"
	"golang-with-k8s/pkg/config"
	"log"

	"github.com/labstack/echo/v4"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

func main() {
	e := echo.New()

	// Init Config
	conf, err := config.NewDatabaseConfig(".env.db", []string{"URL"})
	if err != nil {
		log.Fatal(err)
	}

	// Init DB
	db, err := gorm.Open(mysql.Open(conf.Config.Get("URL")), &gorm.Config{})
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(db)
	// Init Repositories

	// Init Routes
	routes.InitUserRoutes(e)
	e.Logger.Fatal(e.Start(":10001"))
}
