package repository

import (
	"fmt"
	query "golang-with-k8s/cmd/api-server/internal/repository/internal"
	"golang-with-k8s/generated/api_server"
	"golang-with-k8s/pkg/database"
	"golang-with-k8s/pkg/models"
)

func MentorProfileSearch(searchString *api_server.SearchStringPath, params *api_server.GetSearchMentorSearchStringParams) (*[]models.HomeGet, error) {
	result := []models.HomeGet{}
	db := database.SqlX

	sql := query.GetSearchMentorWhereQuery(searchString, params)
	sql += query.GetSearchMentorGroupbyQuery()

	fmt.Println(sql)
	err := db.Select(&result, sql, false, "%"+string(*searchString)+"%", params.Take, params.Take*params.Page)
	if err != nil {
		return nil, err
	}
	return &result, nil
}
