package models

import (
	"golang-with-k8s/generated/api_server"
	"time"

	"github.com/lib/pq"
)

// UserReservationPagination defines model for UserReservationPagination.
type UserReservationPagination struct {
	Content *[]ReservationGet `json:"content,omitempty"`
	Page    *api_server.Page  `json:"page,omitempty"`
}

// ReservationGet defines model for ReservationGet.
type ReservationGet struct {
	CancelReason *ReservationCancelReason `json:"cancelReason,omitempty"`
	Category     CategorySlices           `json:"category,omitempty"`
	CreatedAt    *time.Time               `db:"created_at" json:"createdAt,omitempty"`
	Hashtags     *pq.StringArray          `json:"hashtags,omitempty"`

	// Id reservation id
	Id             *int32                           `db:"id" json:"id,omitempty"`
	MenteeFeedback *api_server.MenteeFeedbackGet    `json:"menteeFeedback,omitempty"`
	MenteeId       *int32                           `db:"mentee_id" json:"menteeId,omitempty"`
	MentorFeedback *api_server.MentorFeedbackGet    `json:"mentorFeedback,omitempty"`
	MentorId       *int32                           `db:"mentor_id" json:"mentorId,omitempty"`
	RequestMessage *string                          `db:"request_message" json:"requestMessage,omitempty"`
	Status         *api_server.ReservationGetStatus `db:"status" json:"status,omitempty"`
	UpdatedAt      *time.Time                       `db:"updated_at" json:"updatedAt,omitempty"`
}
