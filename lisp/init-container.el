(use-package docker
  :defer t
  :bind ("C-c d" . docker))
(use-package dockerfile-mode
  :defer t)
(use-package docker-compose-mode
  :defer t)
(provide 'init-container)
