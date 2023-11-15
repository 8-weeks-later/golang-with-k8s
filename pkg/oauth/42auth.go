package oauth

import (
	"golang-with-k8s/pkg/config"

	"golang.org/x/oauth2"
)

var FTAuthInstance *oauth2.Config

var FT = oauth2.Endpoint{
	AuthURL:  "https://api.intra.42.fr/oauth/authorize",
	TokenURL: "https://api.intra.42.fr/oauth/token",
}

func init() {
	conf := &oauth2.Config{
		ClientID:     config.ConfigInstance.Get("FT_CLIENT_ID"),
		ClientSecret: config.ConfigInstance.Get("FT_CLIENT_SECRET"),
		RedirectURL:  config.ConfigInstance.Get("FT_LOGIN_CALLBACK"),
		Scopes:       []string{"public", "profile"},
		Endpoint:     FT,
	}
	FTAuthInstance = conf
}

func GetFtLoginUrl(state string) string {
	return FTAuthInstance.AuthCodeURL(state)
}

type FtUser struct {
	Email        string `json:"email"`
	ProfileImage string `json:"image_url"`
	NickName     string `json:"login"`
}

func (u *FtUser) GetManitoUser() *ManitoUser {
	return &ManitoUser{}
}
