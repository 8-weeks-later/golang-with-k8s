package controller

import (
	"golang-with-k8s/generated/api_server"

	"github.com/labstack/echo/v4"
)

type MenteeFeedbackController struct{}

func (c *MenteeFeedbackController) GetMenteeFeedbacks(ctx echo.Context, params api_server.GetMenteeFeedbacksParams) error {
	return ctx.String(200, "MenteeFeedback")
}
func (c *MenteeFeedbackController) PostMenteeFeedbacks(ctx echo.Context) error {
	return ctx.String(200, "MenteeFeedback")
}
func (c *MenteeFeedbackController) GetMenteeFeedbacksId(ctx echo.Context, id api_server.IdPath) error {
	return ctx.String(200, "MenteeFeedbackId")
}
