(setq-default cursor-type 'bar)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(set-language-environment 'Chinese-GB)
(when (eq 'system-type 'darwin)
  (setenv "LANG" "en_US.UTF-8"))
(defalias 'yes-or-no-p 'y-or-n-p)
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
