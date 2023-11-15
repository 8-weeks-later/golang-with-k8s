package config

import (
	"os"

	"github.com/joho/godotenv"
)

type IConfig interface {
	Get(key string) string
	loadEnvfile(envfilePath *string, keys []string)
	initConfig()
}

type config struct {
	Env map[string]string
}

var ConfigInstance IConfig

func (c *config) loadEnvfile(envfilePath *string, keys []string) {
	err := godotenv.Load(*envfilePath)
	if err != nil {
		panic("Error loading .env file")
	}
	for _, key := range keys {
		c.Env[key] = os.Getenv(key)
	}
}

func (c *config) Get(key string) string {
	return c.Env[key]
}

func (c *config) initConfig() {
	c.Env = make(map[string]string)
}

func init() {
	ConfigInstance = new(config)
	ConfigInstance.initConfig()

	envFilePath := ".env.auth"
	ConfigInstance.loadEnvfile(&envFilePath, []string{"GOOGLE_CLIENT_ID", "GOOGLE_CLIENT_SECRET", "GOOGLE_LOGIN_CALLBACK"})
	ConfigInstance.loadEnvfile(&envFilePath, []string{"FT_CLIENT_ID", "FT_CLIENT_SECRET", "FT_LOGIN_CALLBACK"})

	envFilePath = ".env.db"
	ConfigInstance.loadEnvfile(&envFilePath, []string{"URL"})

	envFilePath = ".env.secrets"
	ConfigInstance.loadEnvfile(&envFilePath, []string{"SESSION_SECRET"})
}
