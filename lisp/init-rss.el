(use-package elfeed
  :defer t
  :bind (:map elfeed-search-mode-map
              ("U" . elfeed-update))
  :config (setq elfeed-feeds '("https://sachachua.com/blog/category/emacs/feed/")))
(provide 'init-rss)
