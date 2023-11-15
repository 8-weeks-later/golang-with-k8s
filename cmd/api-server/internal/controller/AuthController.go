package controller

import (
	"encoding/json"
	"golang-with-k8s/pkg/oauth"
	"io"

	"github.com/labstack/echo/v4"
)

type AuthController struct {
}

// /auth
func (c *AuthController) GetAuth(ctx echo.Context) error {
	return ctx.JSON(200, "verify")
}

/**
!!!!google
*/
// /auth/google
func (c *AuthController) GetAuthGoogle(ctx echo.Context) error {
	return ctx.Redirect(302, oauth.GetGoogleLoginUrl("ttt"))
}

// 42 OAuth2 callback (verify or create user and return token)
// (GET /auth/42/callback)
func (c *AuthController) GetAuthGoogleCallback(ctx echo.Context) error {

	// login된 이후, path에 query param으로 code를 넘겨준다.
	code := ctx.QueryParam("code")

	// 받은 코드를 사용해 auth token을 받아온다.
	token, err := oauth.GoauthInstance.Exchange(ctx.Request().Context(), code)
	if err != nil {
		return ctx.String(500, "Error")
	}

	// 받은 auth token을 사용해 resource server에 scope에 해당하는 정보를 요청한다.
	client := oauth.GoauthInstance.Client(ctx.Request().Context(), token)
	resource, err := client.Get("https://www.googleapis.com/oauth2/v3/userinfo")
	if err != nil {
		return ctx.String(500, "Error")
	}
	defer resource.Body.Close()

	var authUser oauth.GoogleUser

	body, err := io.ReadAll(resource.Body)
	if err != nil {
		return ctx.String(500, "Error")
	}
	json.Unmarshal(body, &authUser)
	return ctx.String(200, string(body))
}

func (c *AuthController) GetAuth42(ctx echo.Context) error {
	return ctx.Redirect(302, oauth.GetFtLoginUrl("ttt"))
}

func (c *AuthController) GetAuth42Callback(ctx echo.Context) error {
	// login된 이후, path에 query param으로 code를 넘겨준다.
	code := ctx.QueryParam("code")

	// 받은 코드를 사용해 auth token을 받아온다.
	token, err := oauth.FTAuthInstance.Exchange(ctx.Request().Context(), code)
	if err != nil {
		return ctx.String(500, "Error")
	}

	// 받은 auth token을 사용해 resource server에 scope에 해당하는 정보를 요청한다.
	client := oauth.FTAuthInstance.Client(ctx.Request().Context(), token)
	resource, err := client.Get("https://api.intra.42.fr/v2/me")
	if err != nil {
		return ctx.String(500, "Error")
	}
	defer resource.Body.Close()

	var authUser oauth.FtUser

	body, err := io.ReadAll(resource.Body)
	if err != nil {
		return ctx.String(500, "Error")
	}
	json.Unmarshal(body, &authUser)
	return ctx.String(200, string(body))
}
