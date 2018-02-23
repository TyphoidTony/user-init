;;; Package --- Summary
;;; Commentary:
;; File used for setting general variables
;; reason I'm not filling my user-init up with these is to keep
;; it clean of any unneeded things.

;;; Code:

(exec-path-from-shell-initialize)


(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
												 ("melpa" . "http://melpa.milkbox.net/packages/")))




(setq large-file-warning-threshold nil)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
			`((".*" ,temporary-file-directory t)))

(setq visible-bell nil)
(setq ring-bell-function 'ignore)


(fset 'yes-or-no-p 'y-or-n-p)

(global-hl-line-mode)


(defadvice pop-to-buffer (before cancel-other-window first)
  (ad-set-arg 1 nil))

(ad-activate 'pop-to-buffer)

(show-paren-mode t)

(windmove-default-keybindings)

;;(blink-cursor-mode t)

;;(quote (pop-up-windows nil))

;;(setq ns-pop-up-frames nil)

(setq split-height-threshold 0)
(setq split-width-threshold nil)

(setq calendar-latitude 42.49)
(setq calendar-longitude -73.84)
(setq calendar-location-name "Ravena New York")

'(display-time-24hr-format nil)



(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)

(add-hook 'term-mode-hook (lambda()
														(setq yas-dont-activate t)))

(add-hook 'after-make-frame-functions
					'(lambda (frame)
						 (modify-frame-parameters frame
																			'((vertical-scroll-bars . nil)
																				(horizontal-scroll-bars . nil)))))



(when system-type 'mac
			(setq mac-command-key-is-meta t)
			(setq mac-command-modifier 'meta)
			'(ns-use-native-fullscreen)
			)


(require 'autopair) 
(autopair-global-mode)
(require 'rfringe)





(provide 'user-init)
;;; suto-system ends here
