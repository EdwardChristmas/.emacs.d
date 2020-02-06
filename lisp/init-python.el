(use-package python
  :ensure nil
  :defer t
  :init
  (setq python-indent-guess-indent-offset-verbose nil)
  (setq python-indent-offset 4)
  (if (eq system-type 'darwin)
      (setq python-shell-interpreter "/usr/local/bin/python3")
    (setq python-shell-interpreter "python")))
(provide 'init-python)
