package config

import (
	"log"
	"os"

	"github.com/joho/godotenv"
)

type config struct {
	Env map[string]string
}

func NewConfig(envFilePath *string, keys []string) (*config, error) {
	c := &config{}
	c, err := c.InitConfig(envFilePath, keys)
	if err != nil {
		log.Fatal("Error loading .env file")
		return nil, err
	}
	return c, nil
}

func (c *config) InitConfig(envFilePath *string, keys []string) (*config, error) {
	err := godotenv.Load(*envFilePath)
	if err != nil {
		panic("Error loading .env file")
	}

	c.Env = make(map[string]string)
	for _, key := range keys {
		c.Env[key] = os.Getenv(key)
	}

	return c, nil
}

func (c *config) Get(key string) string {
	return c.Env[key]
}
