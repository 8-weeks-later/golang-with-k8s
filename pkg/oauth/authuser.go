package oauth

type ManitoUser struct {
	Email        string
	ProfileImage string
	NickName     string
}

type IOauthUser interface {
	GetManitoUser() *ManitoUser
}
