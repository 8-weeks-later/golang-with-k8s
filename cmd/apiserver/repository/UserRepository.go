package repository

import (
	"fmt"
	query2 "golang-with-k8s/cmd/apiserver/repository/internal"
	"golang-with-k8s/generated/api_server"
	"golang-with-k8s/pkg/database"
	"golang-with-k8s/pkg/models"
	"strconv"

	"github.com/lib/pq"
)

func GetUsers(params *api_server.GetUsersParams) (*[]models.UserGet, error) {

	users := []models.UserGet{}

	sql := query2.GetUsers

	db := database.SqlX
	err := db.Select(&users, sql, strconv.Itoa(int(params.Take)), strconv.Itoa(int(params.Take)*int(params.Page)))
	if err != nil {
		fmt.Println(err)
		return nil, err
	}
	fmt.Println(users)
	return &users, err
}

func GetUserById(id *api_server.IdPath) (*models.UserGet, error) {
	var user models.UserGet

	sql := query2.GetUserById

	db := database.SqlX
	err := db.Get(&user, sql, id)
	if err != nil {
		fmt.Println(err)
		return nil, err
	}
	return &user, err
}

func GetUsersIdReservations(id *api_server.IdPath, params *api_server.GetUsersIdReservationsParams) (*models.UserReservationPagination, error) {

	result := models.UserReservationPagination{}
	reservations := []models.ReservationGet{}
	var page *api_server.Page

	db := database.SqlX
	sql := query2.GetUsersIdReservations
	sql += query2.GetUsersIdReservationsQuery(params.Status, params.Role)
	sql += " GROUP BY r.id, mf.id, mtf.id, cr.content, cr.reservation_id, cr.created_at, cr.requested_user_id, c.id ORDER BY r.updated_at DESC LIMIT $3 OFFSET $4;"
	err := db.Select(&reservations, sql, pq.Array(params.Status), strconv.Itoa(int(*id)), strconv.Itoa(int(params.Take)), strconv.Itoa(int(params.Take)*int(params.Page)))

	if err != nil {
		fmt.Println(err)
		return nil, err
	}

	var count int32

	cntsql := "SELECT count(*) FROM reservations r "
	cntsql += query2.GetUsersIdReservationsQuery(params.Status, params.Role)
	cntsql += ";"
	row := db.QueryRow(cntsql, pq.Array(params.Status), strconv.Itoa(int(*id)))
	row.Scan(&count)
	page = query2.GetPageStruct(&count, &params.Page, &params.Take)
	result.Content = &reservations
	result.Page = page
	return &result, nil
}

func PatchUser(id *api_server.IdPath, body *api_server.PatchUsersIdJSONRequestBody) (*models.UserGet, error) {
	var user models.UserGet

	sql := query2.PatchUser

	db := database.SqlX

	err := db.Get(&user, sql, body.ProfileImage, id)
	if err != nil {
		fmt.Println(err)
		return nil, err
	}

	return &user, nil
}
