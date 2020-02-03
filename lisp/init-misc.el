(use-package epa
  :ensure nil
  :defer t
  :hook (kill-emacs . c4droid/kill-gpg-agent)
  :init (epa-file-enable)
  :config
  (setq epa-pinentry-mode 'loopback)
  (setq epa-file-select-keys 0)
  (setq epa-file-cache-passphrase-for-symmetric-encryption t)
  (defun c4droid/kill-gpg-agent ()
    (shell-command "pkill gpg-agent")))
(provide 'init-misc)
