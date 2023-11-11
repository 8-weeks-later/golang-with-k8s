package models

import "time"

type Reservation struct {
	ID             int
	Mentor         User
	MentorId       int
	Mentee         User
	MenteeId       int
	Category       Category
	CategoryId     int
	RequestMessage *string
	Status         ReservationStatus
	CreatedAt      time.Time
	UpdatedAt      *time.Time
	Hashtags       []Hashtag
	MentorFeedback *MentorFeedback
	MenteeFeedback *MenteeFeedback
	CancelReason   *CancelReason
}
