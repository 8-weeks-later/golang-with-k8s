package database

import (
	"golang-with-k8s/pkg/config"
	"log"

	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

type GormDB struct {
	DB *gorm.DB
}

var Gorm *GormDB

func init() {
	Gorm = &GormDB{}

	// Init Config

	var err error
	Gorm.DB, err = gorm.Open(mysql.Open(config.DatabaseConf.Config.Get("URL")), &gorm.Config{})
	if err != nil {
		log.Fatal(err)
	}
	raw, err := Gorm.DB.DB()
	raw.SetMaxOpenConns(5)
	raw.SetMaxIdleConns(5)
}
