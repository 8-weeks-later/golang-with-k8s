package api_server

//RegisterHandlers registers the handlers for the api_server service

func ApiServerRegisterHandlers(router EchoRouter, si ServerInterface) {
	registerHandlersWithBaseURL(router, si, "")
}

// Registers handlers, and prepends BaseURL to the paths, so that the paths
// can be served under a prefix.
func registerHandlersWithBaseURL(router EchoRouter, si ServerInterface, baseURL string) {

	wrapper := ServerInterfaceWrapper{
		Handler: si,
	}

	// needs middleware
	router.GET(baseURL+"/auth", wrapper.GetAuth)
	router.GET(baseURL+"/auth/google", wrapper.GetAuthGoogle)
	router.GET(baseURL+"/auth/google/callback", wrapper.GetAuthGoogleCallback)
	router.GET(baseURL+"/auth/42", wrapper.GetAuth42)
	router.GET(baseURL+"/auth/42/callback", wrapper.GetAuth42Callback)
	router.GET(baseURL+"/categories", wrapper.GetCategories)
	router.GET(baseURL+"/hashtags", wrapper.GetHashtags)
	router.POST(baseURL+"/hashtags", wrapper.PostHashtags)
	router.GET(baseURL+"/home", wrapper.GetHome)
	router.GET(baseURL+"/home/:category_id", wrapper.GetHomeCategoryId)
	router.GET(baseURL+"/mentee_feedbacks", wrapper.GetMenteeFeedbacks)
	router.POST(baseURL+"/mentee_feedbacks", wrapper.PostMenteeFeedbacks)
	router.GET(baseURL+"/mentee_feedbacks/:id", wrapper.GetMenteeFeedbacksId)
	router.GET(baseURL+"/mentor_feedbacks", wrapper.GetMentorFeedbacks)
	router.POST(baseURL+"/mentor_feedbacks", wrapper.PostMentorFeedbacks)
	router.GET(baseURL+"/mentor_feedbacks/:id", wrapper.GetMentorFeedbacksId)
	router.GET(baseURL+"/mentor_profiles", wrapper.GetMentorProfiles)
	router.GET(baseURL+"/mentor_profiles/:id", wrapper.GetMentorProfilesId)
	router.PATCH(baseURL+"/mentor_profiles/:id", wrapper.PatchMentorProfilesId)
	router.PATCH(baseURL+"/mentor_profiles/:id/activation", wrapper.PatchMentorProfilesIdActivation)
	router.GET(baseURL+"/reservations", wrapper.GetReservations)
	router.POST(baseURL+"/reservations", wrapper.PostReservations)
	router.GET(baseURL+"/reservations/:id", wrapper.GetReservationsId)
	router.PATCH(baseURL+"/reservations/:id", wrapper.PatchReservationsId)
	router.PATCH(baseURL+"/reservations/:id/accept", wrapper.PatchReservationsIdAccept)
	router.PATCH(baseURL+"/reservations/:id/cancel", wrapper.PatchReservationsIdCancel)
	router.PATCH(baseURL+"/reservations/:id/check", wrapper.PatchReservationsIdCheck)
	router.PATCH(baseURL+"/reservations/:id/mentee_completion", wrapper.PatchReservationsIdMenteeCompletion)
	router.PATCH(baseURL+"/reservations/:id/mentor_completion", wrapper.PatchReservationsIdMentorCompletion)
	router.GET(baseURL+"/search/mentor/:search_string", wrapper.GetSearchMentorSearchString)
	router.GET(baseURL+"/users", wrapper.GetUsers)
	router.POST(baseURL+"/users", wrapper.PostUsers)
	router.GET(baseURL+"/users/:id", wrapper.GetUsersId)
	router.PATCH(baseURL+"/users/:id", wrapper.PatchUsersId)
	router.GET(baseURL+"/users/:id/reservations", wrapper.GetUsersIdReservations)

}
