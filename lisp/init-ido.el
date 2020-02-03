(use-package ido
  :ensure nil
  :defer t
  :bind ("C-c e" . c4droid/ido-erc-buffer)
  :hook (after-init . ido-mode)
  :init
  (setq ido-enable-flex-matching t)
  (setq ido-use-filename-at-point 'guess)
  (setq ido-everywhere t)
  :config
  (defun ido-for-mode (prompt the-mode)
    "Helper function to select based on mode."
    (switch-to-buffer
     (ido-completing-read prompt
			  (save-excursion
			    (delq nil
				  (mapcar (lambda (buf)
					    (when (buffer-live-p buf)
					      (with-current-buffer buf
						(and (eq major-mode the-mode)
						     (buffer-name buf)))))
					  (buffer-list)))))))
  (defun c4droid/ido-erc-buffer ()
    "Using `ido-mode' help to select irc channel."
    (interactive)
    (ido-for-mode "Channel: " 'erc-mode)))
(provide 'init-ido)
