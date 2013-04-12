(setq shell-file-name "/bin/bash")
(setq make-backup-files nil)

(defun copy-line (arg)
  "Copy lines (as many as prefix argument) in the kill ring"
  (interactive "p")
  (kill-ring-save (line-beginning-position)
		  (line-beginning-position (+ 1 arg)))
  (message "%d line%s copied" arg (if (= 1 arg) "" "s")))

(global-set-key "\C-c\C-k" ' copy-line)

(custom-set-variables 
 ' (cua-mode t nil (cua-base))
 ' (tool-bar-mode nil nil (tool-bar)))
(custom-set-faces)

(defun back-window ()
  (interactive)
  (other-window -1))

(global-set-key "\C-xp" ' back-window )

