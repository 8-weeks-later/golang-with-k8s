package models

import (
	"time"
)

type User struct {
	ID            int            `json:"id,omitempty" db:"id"`
	Email         *string        `json:"email,omitempty" db:"email"`
	Nickname      *string        `json:"nickname,omitempty" db:"nickname"`
	ProfileImage  *string        `json:"profileImage,omitempty" db:"profile_image"`
	Role          *UserRole      `json:"role,omitempty" db:"role"`
	CreatedAt     *time.Time     `json:"createdAt,omitempty" db:"created_at"`
	UpdatedAt     *time.Time     `json:"updatedAt,omitempty" db:"updated_at"`
	MentorProfile *MentorProfile `json:"mentorProfile,omitempty"`
}
