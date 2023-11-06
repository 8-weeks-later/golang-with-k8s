package config

import (
	"testing"
)

func TestDatabaseConfig(t *testing.T) {
	want := "a"

	conf, err := NewDatabaseConfig("../../tests/pkg/config/testenv", []string{"TEST"})
	if err != nil {
		t.Fatalf("NewDatabaseConfig() error = %v", err)
	}

	if got := conf.Config.Get("TEST"); got != want {
		t.Errorf("DatabaseConfig.Get() = %v, want %v", got, want)
	}
}
