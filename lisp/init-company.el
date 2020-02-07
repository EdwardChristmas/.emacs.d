(use-package company
  :defer t
  :bind (:map company-active-map
         ("M-j" . company-select-next)
         ("M-k" . company-select-previous))
  :hook ((emacs-lisp-mode . company-mode)
         (c-mode-common . company-mode)
         (c++-mode-common . company-mode)
         (python-mode . company-mode))
  :config
  (setq company-minimum-prefix-length 2)
  (setq company-idle-delay 0))
(provide 'init-company)
