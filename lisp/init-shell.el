(use-package exec-path-from-shell
  :defer t
  :hook (after-init . exec-path-from-shell-initialize)
  :init (setq exec-path-from-shell-variables '("PATH"))
  :config
  (setq exec-path-from-shell-arguments '("-l")))
(provide 'init-shell)
