package repository

import (
	"fmt"
	query "golang-with-k8s/cmd/api-server/internal/repository/internal"
	"golang-with-k8s/generated/api_server"
	"golang-with-k8s/pkg/database"
	"golang-with-k8s/pkg/models"
	"strconv"

	"github.com/lib/pq"
)

func GetUsers(params *api_server.GetUsersParams) (*[]models.User, error) {

	users := []models.User{}

	sql := query.GetUsers

	db := database.SqlX
	err := db.Select(&users, sql, strconv.Itoa(int(params.Take)), strconv.Itoa(int(params.Take)*int(params.Page)))
	if err != nil {
		fmt.Println(err)
		return nil, err
	}
	fmt.Println(users)
	return &users, err
}

func GetUserById(id *api_server.IdPath) (*api_server.UserGet, error) {
	var user api_server.UserGet

	sql := query.GetUserById

	db := database.SqlX
	err := db.Get(&user, sql, id)
	if err != nil {
		fmt.Println(err)
		return nil, err
	}
	return &user, err
}

func GetUsersIdReservations(id *api_server.IdPath, params *api_server.GetUsersIdReservationsParams) (*api_server.UserReservationPagination, error) {

	result := api_server.UserReservationPagination{}
	reservations := []api_server.ReservationGet{}
	var page *api_server.Page

	db := database.SqlX
	sql := query.GetUsersIdReservations
	sql += query.GetUsersIdReservationsQuery(params.Status, params.Role)
	sql += " GROUP BY r.id, mf.id, mtf.id, cr.content, cr.reservation_id, cr.created_at, cr.requested_user_id, c.id ORDER BY r.updated_at DESC LIMIT $3 OFFSET $4;"
	err := db.Select(&reservations, sql, pq.Array(params.Status), strconv.Itoa(int(*id)), strconv.Itoa(int(params.Take)), strconv.Itoa(int(params.Take)*int(params.Page)))

	if err != nil {
		fmt.Println(err)
		return nil, err
	}

	var count int32

	cntsql := "SELECT count(*) FROM reservations r "
	cntsql += query.GetUsersIdReservationsQuery(params.Status, params.Role)
	cntsql += ";"
	row := db.QueryRow(cntsql, pq.Array(params.Status), strconv.Itoa(int(*id)))
	row.Scan(&count)
	page = query.GetPageStruct(&count, &params.Page, &params.Take)
	result.Content = &reservations
	result.Page = page
	return &result, nil
}

func PatchUser(id *api_server.IdPath, body *api_server.PatchUsersIdJSONRequestBody) (*api_server.UserGet, error) {
	var user api_server.UserGet

	sql := query.PatchUser

	db := database.SqlX

	err := db.Get(&user, sql, body.ProfileImage, id)
	if err != nil {
		fmt.Println(err)
		return nil, err
	}

	return &user, nil
}
