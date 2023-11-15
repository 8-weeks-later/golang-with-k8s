package oauth

import (
	"golang-with-k8s/pkg/config"

	"golang.org/x/oauth2"
	"golang.org/x/oauth2/endpoints"
)

var GoauthInstance *oauth2.Config

func init() {

	conf := &oauth2.Config{
		ClientID:     config.ConfigInstance.Get("GOOGLE_CLIENT_ID"),
		ClientSecret: config.ConfigInstance.Get("GOOGLE_CLIENT_SECRET"),
		RedirectURL:  config.ConfigInstance.Get("GOOGLE_LOGIN_CALLBACK"),
		Scopes:       []string{"https://www.googleapis.com/auth/userinfo.email"},
		Endpoint:     endpoints.Google,
	}
	GoauthInstance = conf
}

func GetGoogleLoginUrl(state string) string {
	return GoauthInstance.AuthCodeURL(state)
}

type GoogleUser struct {
	Email        string `json:"email"`
	ProfileImage string `json:"image.versions.medium"`
	NickName     string `json:"login"`
}

func (u *GoogleUser) GetManitoUser() *ManitoUser {
	return &ManitoUser{}
}
