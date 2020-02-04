(use-package elisp-mode
  :ensure nil
  :defer t
  :bind ("C-c C-b" . eval-buffer))
(use-package paredit
  :defer t
  :hook ((emacs-lisp-mode . enable-paredit-mode)
         (lisp-mode . enable-paredit-mode)
         (lisp-interaction-mode . enable-paredit-mode)
         (ielm-mode . enable-paredit-mode)))
(provide 'init-lisp)
