(use-package cc-mode
  :ensure nil
  :defer t
  :init
  (setq c-basic-offset 4)
  (setq c-default-style "linux"))
(use-package c-eldoc
  :defer t
  :hook ((c-mode . c-turn-on-eldoc-mode)
         (c++-mode . c-turn-on-eldoc-mode)))
(provide 'init-clang)
