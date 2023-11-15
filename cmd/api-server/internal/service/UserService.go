package service

import (
	"golang-with-k8s/cmd/api-server/internal/repository"
	"golang-with-k8s/generated/api_server"
	"golang-with-k8s/pkg/models"
)

func GetUsersService(param *api_server.GetUsersParams) (*[]models.User, error) {
	return repository.GetUsers(param)
}

func GetUserByIdService(id *api_server.IdPath) (*api_server.UserGet, error) {
	return repository.GetUserById(id)
}

func GetUsersIdReservationService(id *api_server.IdPath, params *api_server.GetUsersIdReservationsParams) (*api_server.UserReservationPagination, error) {
	return repository.GetUsersIdReservations(id, params)
}

func PatchUserService(id *api_server.IdPath, body *api_server.PatchUsersIdJSONRequestBody) (*api_server.UserGet, error) {
	return repository.PatchUser(id, body)
}
