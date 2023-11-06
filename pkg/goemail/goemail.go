package goemail

type MailInfo struct {
	From    string
	To      []string
	Subject string
	Body    string
}

type Mailer interface {
	SendMail(mailInfo MailInfo) error
}

type MailerImpl struct {
}

func (mailer MailerImpl) SendMail(mailInfo MailInfo) error {
	return nil
}
