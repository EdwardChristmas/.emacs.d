(use-package gcmh
  :defer t
  :demand t
  :hook (after-init . gcmh-mode)
  :init
  (setq gcmh-verbose t)
  (setq gcmh-lows-cons-threshold #x1000000)
  (setq gcmh-high-cons-threshold #x1000000)
  (setq gcmh-idle-delay 300))
(provide 'init-performance)
