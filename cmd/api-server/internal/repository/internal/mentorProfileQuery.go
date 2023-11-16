package query

import (
	"golang-with-k8s/generated/api_server"
)

const (
	mentorProfileQuery = `
	SELECT 
	m.id as id,
	m.shortdescription as short_description,
	m.description as description,
	m.mentoring_count as mentoring_count,
	m.created_at as created_at,
	m.updated_at as updated_at,
	m.ishide as is_hide,
	array_agg(DISTINCT c.name) FILTER (WHERE c.name IS NOT NULL) as "categories",
	array_agg(DISTINCT h.tag_name) FILTER (WHERE h.tag_name IS NOT NULL)  as "hashtags",
	u.id as "user.id",
	u.nickname as "user.nickname",
	u.profile_image as "user.profile_image"
	FROM mentor_profiles m
	LEFT JOIN users u ON m.user_id = u.id
	left join _profiles_categories pc on pc.B = m.id
	left join categories c on c.id = pc.A
	left join _profiles_hashtags ph on ph.B = m.id
	left join hashtags h on h.id = ph.A
	`
)

func GetSearchMentorWhereQuery(searchString *api_server.SearchStringPath, params *api_server.GetSearchMentorSearchStringParams) string {

	count := 0
	sql := mentorProfileQuery

	sql += "WHERE m.ishide = $1 AND ("

	if *params.SearchByCategoryName == true {
		if count != 0 {
			sql += " OR "
		}
		sql += "(c.id IN (SELECT pc.A FROM _profiles_categories pc LEFT JOIN categories c ON c.id = pc.A WHERE c.name like $2))"
		count++
	}

	if *params.SearchByHashtagName == true {
		if count != 0 {
			sql += " OR "
		}
		sql += "(h.id IN (SELECT ph.A FROM _profiles_hashtags ph LEFT JOIN hashtags h ON h.id = ph.A WHERE h.tag_name like $2))"
		count++
	}

	if *params.SearchByUserNickname == true {
		if count != 0 {
			sql += " OR "
		}
		sql += `u.nickname LIKE $2`
		count++
	}

	sql += ")"

	return sql
}

func GetSearchMentorGroupbyQuery() string {
	return " GROUP BY m.id, u.id ORDER BY m.updated_at DESC LIMIT $3 OFFSET $4;"
}
