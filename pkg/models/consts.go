package models

const (
	ADMIN UserRole = "admin"
	USER  UserRole = "user"
)

const (
	REQUEST         ReservationStatus = "REQUEST"
	ACCEPT          ReservationStatus = "ACCEPT"
	CANCEL          ReservationStatus = "CANCEL"
	MENTEE_CHECKED  ReservationStatus = "MENTEE_CHECKED"
	MENTEE_FEEDBACK ReservationStatus = "MENTEE_FEEDBACK"
	DONE            ReservationStatus = "DONE"
)
