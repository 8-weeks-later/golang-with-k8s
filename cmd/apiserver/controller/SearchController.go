package controller

import (
	"golang-with-k8s/cmd/apiserver/service"
	"golang-with-k8s/generated/api_server"

	"github.com/labstack/echo/v4"
)

type SearchController struct{}

func (c *SearchController) GetSearchMentorSearchString(ctx echo.Context, searchString api_server.SearchStringPath, params api_server.GetSearchMentorSearchStringParams) error {
	searchResult, err := service.MentorSearchString(&searchString, &params)
	if err != nil {
		return ctx.String(500, "Error")
	}
	return ctx.JSON(200, searchResult)
}
