package config

type DatabaseConfig struct {
	Config *config
}

var DatabaseConf *DatabaseConfig

/**
* @brief get new database config
*
* @param envFilePath string
* @param keys []string
*
* @return
 */
func init() {

	path := ".env.db"

	conf, err := NewConfig(&path, []string{"URL"})

	if err != nil {
		panic("Error loading .env file")
	}

	DatabaseConf = &DatabaseConfig{
		Config: conf,
	}
}
