package models

import (
	"time"
)

type MentorProfile struct {
	ID               int            `json:"id,omitempty" db:"id"`
	ShortDescription *string        `json:"shortDescription,omitempty" db:"shortDescription"`
	Description      *string        `json:"description,omitempty" db:"description"`
	IsHide           *bool          `json:"isHide,omitempty" db:"isHide"`
	MentoringCount   *int32         `json:"mentoringCount,omitempty" db:"mentoring_count"`
	CreatedAt        *time.Time     `json:"createdAt,omitempty" db:"created_at"`
	UpdatedAt        *time.Time     `json:"updatedAt,omitempty" db:"updated_at"`
	SocialLink       *string        `json:"socialLink,omitempty" db:"socialLink"`
	Categories       CategorySlices `db:"categories" json:"categories,omitempty"`
	Hashtags         HashtagSlices  `db:"hashtags" json:"hashtags,omitempty"`
}

// MentorProfileSimpleGet defines model for MentorProfileSimpleGet.
type MentorProfileSimpleGet struct {
	Categories       CategorySlices `db:"categories" json:"categories,omitempty"`
	CreatedAt        *time.Time     `db:"created_at" json:"createdAt,omitempty"`
	Description      *string        `db:"description" json:"description,omitempty"`
	Hashtags         HashtagSlices  `db:"hashtags" json:"hashtags,omitempty"`
	Id               *int32         `db:"id" json:"id,omitempty"`
	IsHide           *bool          `db:"isHide" json:"isHide,omitempty"`
	MentoringCount   *int           `db:"mentoring_count" json:"mentoringCount,omitempty"`
	ShortDescription *string        `db:"shortDescription" json:"shortDescription,omitempty"`
	SocialLink       *string        `db:"socialLink" json:"socialLink,omitempty"`
	UpdatedAt        *time.Time     `db:"updated_at" json:"updatedAt,omitempty"`
}
