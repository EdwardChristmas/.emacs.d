(setq-default cursor-type 'bar)
(when (eq 'system-type 'darwin)
  (setenv "LANG" "en_US.UTF-8"))
(use-package files
  :ensure nil
  :defer t
  :config (setq make-backup-files nil))
(use-package elec-pair
  :ensure nil
  :defer t
  :hook (after-init . electric-pair-mode))
(use-package paren
  :ensure nil
  :defer t
  :hook (after-init . show-paren-mode))
(provide 'init-editor)
