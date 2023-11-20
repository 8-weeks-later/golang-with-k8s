package controller

import (
	"golang-with-k8s/generated/api_server"

	"github.com/labstack/echo/v4"
)

type ReservationController struct{}

func (c *ReservationController) GetReservations(ctx echo.Context, params api_server.GetReservationsParams) error {
	return ctx.String(200, "Reservation")
}
func (c *ReservationController) PostReservations(ctx echo.Context) error {
	return ctx.String(200, "Reservation")
}
func (c *ReservationController) GetReservationsId(ctx echo.Context, id api_server.ReservationPath) error {
	return ctx.String(200, "Reservation")
}
func (c *ReservationController) PatchReservationsId(ctx echo.Context, id api_server.ReservationPath) error {
	return ctx.String(200, "Reservation")
}
func (c *ReservationController) PatchReservationsIdAccept(ctx echo.Context, id api_server.ReservationPath) error {
	return ctx.String(200, "Reservation")
}
func (c *ReservationController) PatchReservationsIdCancel(ctx echo.Context, id api_server.ReservationPath) error {
	return ctx.String(200, "Reservation")
}
func (c *ReservationController) PatchReservationsIdCheck(ctx echo.Context, id api_server.ReservationPath) error {
	return ctx.String(200, "Reservation")
}
func (c *ReservationController) PatchReservationsIdMenteeCompletion(ctx echo.Context, id api_server.ReservationPath) error {
	return ctx.String(200, "Reservation")
}
func (c *ReservationController) PatchReservationsIdMentorCompletion(ctx echo.Context, id api_server.ReservationPath) error {
	return ctx.String(200, "Reservation")
}
