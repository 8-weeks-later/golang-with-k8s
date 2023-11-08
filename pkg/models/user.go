package models

import "time"

type User struct {
	ID                  int
	Email               string
	Nickname            string
	ProfileImage        string
	Role                UserRole
	MentoringCount      int
	CreatedAt           time.Time
	UpdatedAt           *time.Time
	MentorProfile       *MentorProfile
	MentorProfileId     *int
	MenteeReservations  []Reservation    `gorm:"foreignKey:MenteeId"`
	MentorReservations  []Reservation    `gorm:"foreignKey:MentorId"`
	MenteeFeedbacksTo   []MenteeFeedback `gorm:"foreignKey:MenteeId"`
	MenteeFeedbacksFrom []MentorFeedback `gorm:"foreignKey:MentorId"`
	MentorFeedbacksTo   []MentorFeedback `gorm:"foreignKey:MentorId"`
	MentorFeedbacksFrom []MenteeFeedback `gorm:"foreignKey:MenteeId"`
	CancelReasons       []CancelReason   `gorm:"foreignKey:RequestedUserId"`
}
