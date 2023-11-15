package query

import "golang-with-k8s/generated/api_server"

const (
	GetUsers = `SELECT
	u.id as id, 
	u.email as email, 
	u.nickname as nickname, 
	u.profile_image as profile_image, 
	u.role as role, 
	u.created_at as created_at, 
	u.updated_at as updated_at, 
	mp.id as "mentorprofile.id",
	mp.updated_at as "mentorprofile.updated_at", 
	mp.socialLink as "mentorprofile.socialLink", 
	mp.description as "mentorprofile.description", 
	mp.created_at as "mentorprofile.created_at",
	mp.mentoring_count as "mentorprofile.mentoring_count", 
	mp.isHide as "mentorprofile.isHide", 
	mp.shortDescription as "mentorprofile.shortDescription",
	array_agg(DISTINCT c.name) FILTER (WHERE c.name IS NOT NULL) as "mentorprofile.categories",
	array_agg(DISTINCT h.tag_name) FILTER (WHERE h.tag_name IS NOT NULL)  as "mentorprofile.hashtags"
	FROM users u
	right join mentor_profiles mp on mp.user_id = u.id
	left join _profiles_categories pc on pc.B = mp.id
	left join categories c on c.id = pc.A
	left join _profiles_hashtags ph on ph.B = mp.id
	left join hashtags h on h.id = ph.A
	group by u.id, mp.id
	LIMIT $1 OFFSET $2;`

	GetUserById = `SELECT 
	u.id as "id", 
	u.email as "email", 
	u.nickname as nickname, 
	u.profile_image as profile_image, 
	u.role as role, 
	u.created_at as created_at, 
	u.updated_at as updated_at, 
	mp.id as "mentorprofile.id",
	mp.updated_at as "mentorprofile.updated_at", 
	mp.socialLink as "mentorprofile.socialLink", 
	mp.description as "mentorprofile.description", 
	mp.created_at as "mentorprofile.created_at",
	mp.mentoring_count as "mentorprofile.mentoring_count", 
	mp.isHide as "mentorprofile.isHide", 
	mp.shortDescription as "mentorprofile.shortDescription",
	array_agg(DISTINCT c.name) FILTER (WHERE c.name IS NOT NULL) as "mentorprofile.categories",
	array_agg(DISTINCT h.tag_name) FILTER (WHERE h.tag_name IS NOT NULL)  as "mentorprofile.hashtags"
	FROM users u 
	right join mentor_profiles mp on mp.user_id = u.id
	left join _profiles_categories pc on pc.B = mp.id
	left join categories c on c.id = pc.A
	left join _profiles_hashtags ph on ph.B = mp.id
	left join hashtags h on h.id = ph.A
	where u.id=$1
	group by u.id, mp.id;`

	GetUsersIdReservations = `SELECT 
	r.id as id,
	r.mentor_id as mentor_id,
	r.mentee_id as mentee_id,
	r.request_message as request_message,
	r.status as status,
	r.created_at as created_at,
	r.updated_at as updated_at,
	mf.id as "menteefeedback.id",
	mf.reservation_id as "menteefeedback.reservation_id",
	mf.rating as "menteefeedback.rating",
	mf.mentee_id as "menteefeedback.mentee_id",
	mf.mentor_id as "menteefeedback.mentor_id",
	mf.updated_at as "menteefeedback.updated_at",
	mf.created_at as "menteefeedback.created_at",
	mf.content as "menteefeedback.content",
	mtf.id as "mentorfeedback.id",
	mtf.reservation_id as "mentorfeedback.reservation_id",
	mtf.rating as "mentorfeedback.rating",
	mtf.mentee_id as "mentorfeedback.mentee_id",
	mtf.mentor_id as "mentorfeedback.mentor_id",
	mtf.updated_at as "mentorfeedback.updated_at",
	mtf.created_at as "mentorfeedback.created_at",
	cr.content as "cancelreason.content",
	cr.reservation_id as "cancelreason.reservation_id",
	cr.created_at as "cancelreason.created_at",
	cr.requested_user_id as "cancelreason.requested_user_id",
	c.id as "category.id",
	c.name as "category.name",
	array_agg(DISTINCT h.tag_name) FILTER (WHERE h.tag_name IS NOT NULL)  as "hashtags"
	from reservations r
	right join mentor_profiles mp on mp.user_id = r.mentor_id
	left join _profiles_categories pc on pc.B = mp.id
	left join categories c on c.id = pc.A
	left join _profiles_hashtags ph on ph.B = mp.id
	left join hashtags h on h.id = ph.A
	left join mentee_feedbacks mf on mf.reservation_id = r.id
	left join mentor_feedbacks mtf on mtf.reservation_id = r.id
	left join cancel_reasons cr on cr.reservation_id = r.id `

	PatchUser = `
	UPDATE users u
	SET profile_image = $1
	FROM (
		SELECT 
		u.id as "id", 
		u.email as "email", 
		u.nickname as nickname, 
		u.profile_image as profile_image, 
		u.role as role, 
		u.created_at as created_at, 
		u.updated_at as updated_at, 
		mp.id as "mentorprofile.id",
		mp.updated_at as "mentorprofile.updated_at", 
		mp.socialLink as "mentorprofile.socialLink", 
		mp.description as "mentorprofile.description", 
		mp.created_at as "mentorprofile.created_at",
		mp.mentoring_count as "mentorprofile.mentoring_count", 
		mp.isHide as "mentorprofile.isHide", 
		mp.shortDescription as "mentorprofile.shortDescription",
		array_agg(DISTINCT c.name) FILTER (WHERE c.name IS NOT NULL) as "mentorprofile.categories",
		array_agg(DISTINCT h.tag_name) FILTER (WHERE h.tag_name IS NOT NULL)  as "mentorprofile.hashtags"
		FROM users u 
		right join mentor_profiles mp on mp.user_id = u.id
		left join _profiles_categories pc on pc.B = mp.id
		left join categories c on c.id = pc.A
		left join _profiles_hashtags ph on ph.B = mp.id
		left join hashtags h on h.id = ph.A
		group by u.id, mp.id
	)
	WHERE u.id = $2
	returning u.id, u.email, u.nickname, u.profile_image, 
	u.role, u.created_at, u.updated_at, "mentorprofile.id", 
	"mentorprofile.updated_at","mentorprofile.socialLink", 
	"mentorprofile.description", "mentorprofile.created_at",
	"mentorprofile.mentoring_count", "mentorprofile.isHide", 
	"mentorprofile.shortDescription","mentorprofile.categories",
	"mentorprofile.hashtags";`
)

func GetUsersIdReservationsQuery(status *api_server.StatusQuery, role *api_server.GetUsersIdReservationsParamsRole) string {

	var whereQuery string
	whereQuery += `where r.status = ANY($1::text[]::reservations_status[]) `

	if *role == "ALL" {
		whereQuery += "AND r.mentor_id=$2 OR r.mentee_id=$2"
	} else if *role == "MENTOR" {
		whereQuery += "AND r.mentor_id=$2"
	} else if *role == "MENTEE" {
		whereQuery += "AND r.mentee_id=$2"
	}

	return whereQuery
}
