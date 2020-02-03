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
  (setq smtpmail-smtp-server "smtp.qq.com"))
(use-package gnus
  :ensure nil
  :defer t
  :config
  (setq gnus-select-method '(nntp "news.newsfan.net"))
  (setq gnus-secondary-select-methods '((nnimap "imap.qq.com"))))
(use-package mail-source
  :ensure nil
  :defer t
  :init (setq mail-sources '((imap :server "imap.qq.com"
				   :user "1729831470@qq.com"))))
(provide 'init-mail)
