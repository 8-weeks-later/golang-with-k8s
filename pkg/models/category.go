package models

type Category struct {
	ID             int
	Name           string
	MentorProfiles []MentorProfile
	Reservations   []Reservation
}
