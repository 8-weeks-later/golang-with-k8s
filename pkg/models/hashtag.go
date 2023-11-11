package models

type Hashtag struct {
	ID           int    `db:"id"`
	Name         string `db:"tag_name"`
	Profiles     []MentorProfile
	Reservations []Reservation
}
