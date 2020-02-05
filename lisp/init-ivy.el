(use-package ivy
  :defer t
  :hook (after-init . ivy-mode)
  :config
  (setq ivy-use-virtual-buffers t))
(use-package ivy-hydra
  :defer t
  :commands ivy-hydra-read-action
  :init (setq ivy-read-action-function #'ivy-hydra-read-action))
(use-package ivy-xref
  :defer t
  :init
  (when (boundp 'xref-show-definitions-function)
    (setq xref-show-definitions-function #'ivy-xref-show-defs))
  (setq xref-show-xrefs-function #'ivy-xref-show-xrefs))
(use-package swiper
  :defer t
  :bind ("C-s" . swiper))
(use-package counsel
  :defer t
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-h f" . counsel-describe-function)
         ("C-h v" . counsel-describe-variable)
         :map minibuffer-local-map
         ("C-r" . counsel-minibuffer-history)))
(use-package counsel-tramp
  :defer t
  :bind (:map counsel-mode-map
         ("C-c c T" . counsel-tramp)))
(provide 'init-ivy)
