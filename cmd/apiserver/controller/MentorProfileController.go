package controller

import (
	"golang-with-k8s/generated/api_server"

	"github.com/labstack/echo/v4"
)

type MentorProfileController struct {
}

func (c *MentorProfileController) GetMentorProfiles(ctx echo.Context, params api_server.GetMentorProfilesParams) error {
	return ctx.String(200, "MentorProfile")
}
func (c *MentorProfileController) GetMentorProfilesId(ctx echo.Context, id api_server.UserPath) error {
	return ctx.String(200, "MentorProfileId")
}
func (c *MentorProfileController) PatchMentorProfilesId(ctx echo.Context, id api_server.UserPath) error {
	return ctx.String(200, "MentorProfileId")
}
func (c *MentorProfileController) PatchMentorProfilesIdActivation(ctx echo.Context, id api_server.UserPath) error {
	return ctx.String(200, "MentorProfileIdActivation")
}
