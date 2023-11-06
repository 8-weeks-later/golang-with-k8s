package repository

import (
	"log"

	"gorm.io/gorm"
)

var (
	// ErrNotFound is raised when the resource is not found
	ErrNotFound = gorm.ErrRecordNotFound
)

// UserRepository is the repository for users
type UserRepository struct {
	db  *gorm.DB
	log *log.Logger
}

func InitUserRepository(db *gorm.DB) *UserRepository {
	return &UserRepository{db: db}
}
