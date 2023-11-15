package controller

import (
	"golang-with-k8s/generated/api_server"

	"github.com/labstack/echo/v4"
)

type SearchController struct{}

func (c *SearchController) GetSearchMentorSearchString(ctx echo.Context, searchString api_server.SearchStringPath, params api_server.GetSearchMentorSearchStringParams) error {
	return ctx.String(200, "SearchMentorSearchString")
}
