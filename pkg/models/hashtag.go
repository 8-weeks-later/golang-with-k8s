package models

type Hashtag struct {
	ID            int    `db:"id"`
	Name          string `db:"tag_name"`
	MentorProfile []MentorProfile
	Reservations  []Reservation
}
