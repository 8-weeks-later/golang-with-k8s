package service

import (
	"golang-with-k8s/cmd/api-server/internal/repository"
	"golang-with-k8s/generated/api_server"
)

func MentorSearchString(searchString *api_server.SearchStringPath, params *api_server.GetSearchMentorSearchStringParams) (*[]api_server.HomeGet, error) {
	return repository.SearchMentor(searchString, params)
}
