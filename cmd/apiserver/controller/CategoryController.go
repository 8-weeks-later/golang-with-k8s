package controller

import "github.com/labstack/echo/v4"

type CategoryController struct {
}

func (c *CategoryController) GetCategories(ctx echo.Context) error {
	return ctx.String(200, "Category")
}
