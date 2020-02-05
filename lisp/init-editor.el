(setq-default cursor-type 'bar)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(set-language-environment 'Chinese-GB)
(when (eq 'system-type 'darwin)
  (setenv "LANG" "en_US.UTF-8"))
(defalias 'yes-or-no-p 'y-or-n-p)
(use-package files
  :ensure nil
  :defer t
  :config (setq make-backup-files nil))
(use-package elec-pair
  :ensure nil
  :defer t
  :hook (after-init . electric-pair-mode)
  :init (setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit))
(use-package paren
  :ensure nil
  :defer t
  :hook (after-init . show-paren-mode))
(use-package autorevert
  :ensure nil
  :defer t
  :hook (after-init . global-auto-revert-mode))
(use-package recentf
  :ensure nil
  :defer t
  :hook (after-init . recentf-mode)
  :init
  (setq recentf-max-saved-items 500)
  (setq recentf-exclude '("\\.?cache" "COMMIT_EDITMSG\\'" "bookmarks"
                          "\\.\\(?:gz\\|gif\\|svg\\|png\\|jpe?g\\|bmp\\|xpm\\)$"
                          "/G?TAGS$" "/.elfeed/"
                          (lambda (file)
                            (file-in-directory-p file package-user-dir))))
  :config (push (expand-file-name recentf-save-file) recentf-exclude))
(use-package saveplace
  :ensure nil
  :defer t
  :hook (after-init . save-place-mode))
(use-package savehist
  :ensure nil
  :defer t
  :hook (after-init . savehist-mode)
  :init
  (setq enable-recursive-minibuffers t)
  (setq history-length 1000)
  (setq savehist-additional-variables '(mark-ring
                                        global-mark-ring
                                        search-ring
                                        regexp-search-ring
                                        extended-command-history))
  (setq savehist-autosave-interval 300))
(use-package hungry-delete
  :defer t
  :hook (after-init . global-hungry-delete-mode)
  :config (setq-default hungry-delete-chars-to-skip " \t\f\v"))
(provide 'init-editor)
