package service

import (
	"golang-with-k8s/cmd/api-server/internal/repository"
	"golang-with-k8s/generated/api_server"
	"golang-with-k8s/pkg/models"
)

func MentorSearchString(searchString *api_server.SearchStringPath, params *api_server.GetSearchMentorSearchStringParams) (*[]models.HomeGet, error) {
	return repository.MentorProfileSearch(searchString, params)
}
