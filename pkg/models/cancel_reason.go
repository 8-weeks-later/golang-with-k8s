package models

import "time"

type CancelReason struct {
	ID              int
	Content         string
	CreatedAt       time.Time
	RequestUser     User
	RequestedUserId int
	Reservation     Reservation
	ReservationId   int
}
