package models

type Category struct {
	ID             int
	Name           string
	MentorProfiles []MentorProfile `gorm:"many2many:category_mentorProfiles;"`
	Reservations   []Reservation   `gorm:"foreignKey:CategoryId"`
}
