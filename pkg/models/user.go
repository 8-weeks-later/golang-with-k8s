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
	MenteeReservations  []Reservation
	MentorReservations  []Reservation
	MenteeFeedbacksTo   []MenteeFeedback
	MenteeFeedbacksFrom []MentorFeedback
	MentorFeedbacksTo   []MentorFeedback
	MentorFeedbacksFrom []MenteeFeedback
	CancelReasons       []CancelReason
}
