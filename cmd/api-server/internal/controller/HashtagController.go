package controller

import (
	"fmt"
	"golang-with-k8s/generated/api_server"

	"github.com/labstack/echo/v4"
)

type HashtagController struct {
}

func (c *HashtagController) GetHashtags(ctx echo.Context, params api_server.GetHashtagsParams) error {
	return ctx.String(200, "Hashtag")
}

func (c *HashtagController) PostHashtags(ctx echo.Context) error {
	var body api_server.PostHashtagsJSONRequestBody

	if err := ctx.Bind(&body); err != nil {
		return err
	}

	fmt.Println(body)

	return ctx.String(200, "Hashtag")
}
