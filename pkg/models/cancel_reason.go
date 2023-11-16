package models

import "time"

type ReservationCancelReason struct {
	Content         *string    `db:"content" json:"content,omitempty"`
	CreatedAt       *time.Time `db:"created_at" json:"createdAt,omitempty"`
	RequestedUserId *int32     `db:"requested_user_id" json:"requestedUserId,omitempty"`
	ReservationId   *int32     `db:"reservation_id" json:"reservationId,omitempty"`
}
