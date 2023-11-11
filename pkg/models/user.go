package models

import "time"

type User struct {
	ID              int        `db:"id"`
	Email           string     `db:"email"`
	Nickname        string     `db:"nickname"`
	ProfileImage    string     `db:"profile_image"`
	Role            UserRole   `db:"role"`
	MentoringCount  int        `db:"mentoring_count"`
	CreatedAt       *time.Time `db:"created_at"`
	UpdatedAt       *time.Time `db:"updated_at"`
	MentorProfile   *MentorProfile
	MentorProfileId *int `db:"mentor_profile_id"`
}
