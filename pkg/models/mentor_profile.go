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
	Hashtags         []Hashtag
	Categories       []Category
	CreatedAt        time.Time
	UpdatedAt        *time.Time
	SocialLink       string
}
