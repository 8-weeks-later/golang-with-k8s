package models

import "time"

type MentorProfile struct {
	ID               int `db:"id"`
	UserID           int `db:"user_id"`
	User             User
	ShortDescription string    `db:"shortDescription"`
	Description      string    `db:"description"`
	IsHide           bool      `db:"isHide"`
	MentoringCount   int       `db:"mentoring_count"`
	CreatedAt        time.Time `db:"created_at"`
	UpdatedAt        time.Time `db:"updated_at"`
	SocialLink       string    `db:"socialLink"`
}
