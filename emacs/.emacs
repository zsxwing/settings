
(setq shell-file-name "/bin/bash")
(setq make-backup-files nil)
(setq vc-follow-symlinks nil)
(setq-default indent-tabs-mode nil)
(set-face-attribute 'default nil :family "Monaco" :background "black" :foreground "white")

(defun copy-line (arg)
  "Copy lines (as many as prefix argument) in the kill ring"
  (interactive "p")
  (kill-ring-save (line-beginning-position)
		  (line-beginning-position (+ 1 arg)))
  (message "%d line%s copied" arg (if (= 1 arg) "" "s")))

(global-set-key "\C-c\C-k" ' copy-line)

(custom-set-variables
  '(cua-mode t nil (cua-base))
  '(tool-bar-mode nil nil (tool-bar)))
(custom-set-faces)

(defun back-window ()
  (interactive)
  (other-window -1))

(global-set-key "\C-xp" ' back-window )
(global-set-key "\M-[" ' scroll-down )
(global-set-key "\M-]" ' scroll-up )

(defun zsx-sh-style ()
  "My personal preferences for 'sh-mode'"
  (interactive)
  (setq sh-basic-offset 2
        sh-indentation 2))

(defun zsx_get_el_file (el_file)
  (concat 
	(file-name-directory (file-chase-links "~/.emacs"))
	"/"
	el_file)
)

(load-file (zsx_get_el_file "piglatin.el"))
(load-file (zsx_get_el_file "google-c-style.el"))
(load-file (zsx_get_el_file "linum.el"))

(add-hook 'sh-mode-hook 'zsx-sh-style)

(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))

;; Display the line number and the column number.
(require 'linum)
(global-linum-mode t)
(setq column-number-mode t)

;; Set auctex to preview latex formulas
(setq  preview-gs-options  '("-q" "-dNOSAFER" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4"))

