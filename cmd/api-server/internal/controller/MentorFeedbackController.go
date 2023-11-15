package controller

import (
	"golang-with-k8s/generated/api_server"

	"github.com/labstack/echo/v4"
)

type MentorFeedbackController struct{}

func (c *MentorFeedbackController) GetMentorFeedbacks(ctx echo.Context, params api_server.GetMentorFeedbacksParams) error {
	return ctx.String(200, "MentorFeedback")
}
func (c *MentorFeedbackController) PostMentorFeedbacks(ctx echo.Context) error {
	return ctx.String(200, "MentorFeedback")
}
func (c *MentorFeedbackController) GetMentorFeedbacksId(ctx echo.Context, id api_server.IdPath) error {
	return ctx.String(200, "MentorFeedbackId")
}
