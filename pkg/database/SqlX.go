package database

import (
	"golang-with-k8s/pkg/config"

	_ "github.com/go-sql-driver/mysql"
	"github.com/jmoiron/sqlx"
)

var SqlX *sqlx.DB

func init() {

	var err error
	SqlX, err = sqlx.Open("mysql", config.ConfigInstance.Get("URL"))
	if err != nil {
		panic(err.Error())
	}
	SqlX.SetMaxIdleConns(5)
	SqlX.SetMaxOpenConns(5)
}
