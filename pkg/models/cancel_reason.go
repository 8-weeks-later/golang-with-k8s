package models

import "time"

type CancelReason struct {
	ID              int
	Content         string
	CreatedAt       time.Time
	RequestUser     User `gorm:"foreignKey:RequestedUserId"`
	RequestedUserId int
	Reservation     Reservation `gorm:"foreignKey:ReservationId"`
	ReservationId   int
}
