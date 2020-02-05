(use-package dired
  :ensure nil
  :defer t
  :config
  (setq dired-recursive-deletes 'always)
  (setq dired-recursive-copies 'always)
  (setq dired-use-ls-dired nil))
(use-package dired-quick-sort
  :defer t
  :bind (:map dired-mode-map
         ("S" . hydra-dired-quick-sort/body)))
(use-package diredfl
  :defer t
  :hook (dired-mode . diredfl-mode))
(provide 'init-dired)
