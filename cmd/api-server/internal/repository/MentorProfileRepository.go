package repository

import (
	"fmt"
	query "golang-with-k8s/cmd/api-server/internal/repository/internal"
	"golang-with-k8s/generated/api_server"
	"golang-with-k8s/pkg/database"
)

func SearchMentor(searchString *api_server.SearchStringPath, params *api_server.GetSearchMentorSearchStringParams) (*[]api_server.HomeGet, error) {

	result := []api_server.HomeGet{}
	db := database.SqlX

	sql := query.GetSearchMentorWhereQuery(searchString, params)
	sql += query.GetSearchMentorGroupbyQuery()

	err := db.Select(&result, sql, false, "%"+"t"+"%", params.Take, params.Take*params.Page)
	if err != nil {
		fmt.Println(err)
		return nil, err
	}

	return &result, nil
}
