(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'guess)
(setq ido-everywhere t)
(setq enable-recursive-minibuffers t)
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
  "Using `ido-mode' help to select erc channel."
  (interactive)
  (ido-for-mode "Channel: " 'erc-mode))
(ido-mode)
(global-set-key (kbd "C-c e") 'c4droid/ido-erc-buffer)
(provide 'init-ido)
