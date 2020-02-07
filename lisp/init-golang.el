(use-package go-mode
  :defer t
  :bind (:map go-mode-map
         ("M-," . godef-jump)
         ("M-." . pop-tag-mark)
         ("C-c C-f" . gofmt))
  :config
  (setq gofmt-command "goimports"))
(provide 'init-golang)
