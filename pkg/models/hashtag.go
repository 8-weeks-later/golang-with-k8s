package models

type Hashtag struct {
	ID           int
	Name         string
	Profiles     []MentorProfile
	Reservations []Reservation
}
