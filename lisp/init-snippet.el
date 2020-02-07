(use-package yasnippet
  :defer t
  :bind ("C-c & C-n" . yas-new-snippet)
  :hook (prog-mode . yas-minor-mode))
(provide 'init-snippet)
