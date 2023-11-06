package models

import "time"

type MenteeFeedback struct {
	ID            int
	Mentee        User
	MenteeId      int
	Mentor        User
	MentorId      int
	Reservation   Reservation
	ReservationId int
	Rating        float64
	Content       *string
	CreatedAt     time.Time
	UpdatedAt     *time.Time
}
