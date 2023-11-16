package models

import (
	"golang-with-k8s/generated/api_server"
	"time"

	openapi_types "github.com/oapi-codegen/runtime/types"
)

//Implement user_get.

type UserGet struct {
	CreatedAt     *time.Time              `db:"created_at" json:"createdAt,omitempty"`
	Email         *openapi_types.Email    `db:"email" json:"email,omitempty"`
	Id            *int32                  `db:"id" json:"id,omitempty"`
	MentorProfile *MentorProfileSimpleGet `json:"mentorProfile,omitempty"`
	Nickname      *string                 `db:"nickname" json:"nickname,omitempty"`
	ProfileImage  *string                 `db:"profile_image" json:"profileImage,omitempty"`

	// Role required
	Role      *api_server.UserGetRole `db:"role" json:"role,omitempty"`
	UpdatedAt *time.Time              `db:"updated_at" json:"updatedAt,omitempty"`
}
