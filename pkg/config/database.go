package config

type DatabaseConfig struct {
	Config *config
}

/**
* @brief get new database config
*
* @param envFilePath string
* @param keys []string
*
* @return
 */
func NewDatabaseConfig(envFilePath string, keys []string) (*DatabaseConfig, error) {

	conf, err := NewConfig(&envFilePath, keys)
	if err != nil {
		return nil, err
	}

	return &DatabaseConfig{
		Config: conf,
	}, nil
}
