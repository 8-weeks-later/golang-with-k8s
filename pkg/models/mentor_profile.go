package models

import "time"

type MentorProfile struct {
	ID               int
	UserID           int
	User             User
	ShortDescription string
	Description      string
	IsHide           bool
	MentoringCount   int
	Hashtags         []Hashtag  `gorm:"many2many:hashtag_mentorProfiles;"`
	Categories       []Category `gorm:"many2many:category_mentorProfiles;"`
	CreatedAt        time.Time
	UpdatedAt        *time.Time
	SocialLink       string
}
