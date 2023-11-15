package internal

import "golang-with-k8s/cmd/api-server/internal/controller"

type Server struct {
	controller.AuthController
	controller.CategoryController
	controller.HomeController
	controller.MenteeFeedbackController
	controller.MentorFeedbackController
	controller.MentorProfileController
	controller.HashtagController
	controller.ReservationController
	controller.UserController
	controller.SearchController
}

func NewServer() *Server {
	return &Server{}
}
