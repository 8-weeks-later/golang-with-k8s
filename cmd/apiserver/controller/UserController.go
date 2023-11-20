package controller

import (
	"golang-with-k8s/cmd/apiserver/service"
	"golang-with-k8s/generated/api_server"
	_ "golang-with-k8s/pkg/database"
	"net/http"

	"github.com/labstack/echo/v4"
)

type UserController struct {
}

func (c *UserController) GetUsers(ctx echo.Context, params api_server.GetUsersParams) error {

	users, err := service.GetUsersService(&params)

	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	return ctx.JSON(http.StatusOK, users)
}

// not used
func (c *UserController) PostUsers(ctx echo.Context) error {
	return nil
}

// Get a user by ID
// (GET /users/{id})
func (c *UserController) GetUsersId(ctx echo.Context, id api_server.IdPath) error {

	user, err := service.GetUserByIdService(&id)

	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	return ctx.JSON(200, user)
}

// Update user
// (PATCH /users/{id})
func (c *UserController) PatchUsersId(ctx echo.Context, id api_server.IdPath) error {
	//need jwt auth

	body := api_server.PatchUsersIdJSONRequestBody{}
	err := (&echo.DefaultBinder{}).BindBody(ctx, &body)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	user, err := service.PatchUserService(&id, &body)

	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}
	return ctx.JSON(200, user)
}

// Get a user reservations by ID
// (GET /users/{id}/reservations)
func (c *UserController) GetUsersIdReservations(ctx echo.Context, id api_server.IdPath, params api_server.GetUsersIdReservationsParams) error {
	// need jwt auth
	res, err := service.GetUsersIdReservationService(&id, &params)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}
	return ctx.JSON(200, res)
}
