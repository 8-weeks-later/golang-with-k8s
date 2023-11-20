package query

import (
	"golang-with-k8s/generated/api_server"
	"math"
)

func GetPageStruct(cnt *int32, page *api_server.PageQuery, take *api_server.TakeQuery) *api_server.Page {
	var pagestruct api_server.Page
	var islast bool = false
	var totalpage int32

	totalpage = int32(math.Ceil(float64(*cnt / *take))) - 1
	pagestruct.TotalPage = &totalpage
	pagestruct.Page = page
	pagestruct.Take = take
	pagestruct.CurrentPage = page
	if totalpage <= *page {
		islast = true
	}
	pagestruct.IsLast = &islast
	return &pagestruct
}
