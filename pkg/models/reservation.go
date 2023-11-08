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
	Hashtags       []Hashtag       `gorm:"many2many:hashtag_reservations;"`
	MentorFeedback *MentorFeedback `gorm:"foreignKey:ReservationId"`
	MenteeFeedback *MenteeFeedback `gorm:"foreignKey:ReservationId"`
	CancelReason   *CancelReason   `gorm:"foreignKey:ReservationId"`
}
