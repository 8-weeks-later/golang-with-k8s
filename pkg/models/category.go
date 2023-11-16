package models

import (
	"database/sql/driver"
	"encoding/json"
	"golang-with-k8s/generated/api_server"
)

type CategorySlices []*api_server.CategoryGet

func (s CategorySlices) Value() (driver.Value, error) {
	return json.Marshal(s)
}

func (s *CategorySlices) Scan(src interface{}) error {
	var data []byte
	switch v := src.(type) {
	case string:
		data = []byte(v)
	case []byte:
		data = v
	default:
		return nil
	}
	return json.Unmarshal(data, s)
}
