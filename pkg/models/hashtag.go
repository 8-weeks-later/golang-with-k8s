package models

type Hashtag struct {
	ID           int
	Name         string
	Profiles     []MentorProfile `gorm:"many2many:hashtag_mentorProfiles;"`
	Reservations []Reservation   `gorm:"many2many:hashtag_reservations;"`
}
