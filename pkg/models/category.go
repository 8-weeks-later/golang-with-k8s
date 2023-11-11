package models

type Category struct {
	ID   int    `db:"id"`
	Name string `db:"name"`
	// MentorProfiles []MentorProfile
	// Reservations   []Reservation
}
