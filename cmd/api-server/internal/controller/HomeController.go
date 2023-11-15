package controller

import (
	"golang-with-k8s/generated/api_server"

	"github.com/labstack/echo/v4"
)

type HomeController struct {
}

func (c *HomeController) GetHome(ctx echo.Context, params api_server.GetHomeParams) error {
	return ctx.String(200, "Home")
}

func (c *HomeController) GetHomeCategoryId(ctx echo.Context, categoryId api_server.CategoryPath, params api_server.GetHomeCategoryIdParams) error {
	return ctx.String(200, "HomeCategoryId")
}
