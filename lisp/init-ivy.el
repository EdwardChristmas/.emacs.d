(use-package ivy
  :defer t
  :hook (after-init . ivy-mode))
(use-package swiper
  :defer t
  :bind ("C-s" . swiper))
(use-package counsel
  :defer t
  :bind (("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 ("C-h f" . counsel-describe-function)
	 ("C-h v" . counsel-describe-variable)))
(provide 'init-ivy)
