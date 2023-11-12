package models

import (
	"time"

	"github.com/lib/pq"
)

type MentorProfile struct {
	ID               int            `json:"id,omitempty" db:"id"`
	ShortDescription *string        `json:"shortDescription,omitempty" db:"shortDescription"`
	Description      *string        `json:"description,omitempty" db:"description"`
	IsHide           *bool          `json:"isHide,omitempty" db:"isHide,omitempty"`
	MentoringCount   *int32         `json:"mentoringCount,omitempty" db:"mentoring_count,omitempty"`
	CreatedAt        *time.Time     `json:"createdAt,omitempty" db:"created_at,omitempty"`
	UpdatedAt        *time.Time     `json:"updatedAt,omitempty" db:"updated_at,omitempty"`
	SocialLink       *string        `json:"socialLink,omitempty" db:"socialLink,omitempty"`
	Hashtags         pq.StringArray `json:"hashtags,omitempty" db:"hashtags,omitempty"`
	Categories       pq.StringArray `json:"categories,omitempty" db:"categories,omitempty"`
}
