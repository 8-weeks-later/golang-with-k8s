package models

import (
	"golang-with-k8s/generated/api_server"
	"time"
)

// HomeGet defines model for HomeGet.
type HomeGet struct {
	Categories       CategorySlices             `db:"categories" json:"categories,omitempty"`
	CreatedAt        *time.Time                 `db:"created_at" json:"createdAt,omitempty"`
	Description      *string                    `db:"description" json:"description,omitempty"`
	Hashtags         HashtagSlices              `db:"hashtags" json:"hashtags,omitempty"`
	Id               *int32                     `db:"id" json:"id,omitempty"`
	IsHide           *bool                      `db:"is_hide" json:"isHide,omitempty"`
	MentoringCount   *int                       `db:"mentoring_count" json:"mentoringCount,omitempty"`
	ShortDescription *string                    `db:"short_description" json:"shortDescription,omitempty"`
	UpdatedAt        *time.Time                 `db:"updated_at" json:"updatedAt,omitempty"`
	User             *api_server.HomeSimpleUser `json:"user,omitempty"`
}
