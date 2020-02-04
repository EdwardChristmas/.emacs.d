(setq user-full-name "c4droid")
(setq user-mail-address "c4droid@foxmail.com")
(use-package message
  :ensure nil
  :defer t
  :config (setq message-send-mail-funtion 'smtpmail-send-it))
(use-package sendmail
  :ensure nil
  :defer t
  :config (setq send-mail-functiom 'smtpmail-send-it))
(use-package smtpmail
  :ensure nil
  :defer t
  :config
  (setq smtpmail-default-smtp-server "smtp.qq.com")
  (setq smtpmail-smtp-server "smtp.qq.com")
  (setq smtpmail-smtp-service 465))
(use-package gnus
  :ensure nil
  :defer t
  :config
  (setq gnus-select-method '(nntp "news.newsfan.net"))
  (setq gnus-secondary-select-methods '((nnimap "mail"
						(nnimap-address "imap.qq.com")
						(nnimap-stream ssl)
						(nnimap-authenticator login)
						(nnimap-authinfo-file "~/.authinfo.gpg")
						(nnimap-port 993)))))
(provide 'init-mail)
