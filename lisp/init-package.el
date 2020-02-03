(require 'package)
(setq package-archives '(("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(defun c4droid/save-select-packages (&optional value)
  "Set `package-select-packages' to VALUE but don't save `custom-file'."
  (when value
    (setq package-select-packages value)))
(advice-add 'package--save-selected-packages :override 'c4droid/save-select-packages)
(unless (bound-and-true-p package--initialized)
  (setq package-enable-at-startup nil)
  (package-initialize))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-expand-minimally t)
  (setq use-package-enable-imenu-support t))
(eval-when-compile
  (require 'use-package))
(use-package diminish
  :defer t)
(use-package bind-key
  :defer t)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file t)
(provide 'init-package)
