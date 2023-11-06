package models

import "time"

type MentorFeedback struct {
	ID            int
	Mentee        User
	MenteeId      int
	Mentor        User
	MentorId      int
	Reservation   Reservation
	ReservationId int
	Rating        float64
	CreatedAt     time.Time
	UpdatedAt     *time.Time
}
