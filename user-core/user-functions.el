;; personal functions that I use to extend functionality of base emacs all extentions of packages should be their
;; respective package specific files.

;;(setq-default message-log-max nil)
;;(kill-buffer "*Messages*")

;; (add-hook 'minibuffer-exit-hook
;; 	  '(lambda ()
;; 	     (let ((buffer "*Completions*"))
;; 	       (and (get-buffer buffer)
;; 		    (kill-buffer buffer)))))

;;;;;;;;;;;;;;;;;;;;;;
;;MY USER FUNCTIONS;;;
;;;;;;;;;;;;;;;;;;;;;;




																				;##################################
																				;#### Toggle window dedication ####
																				;##################################
;; (defun tog ()
;;   "Toggle whether the current active window is dedicated or not"
;;   (interactive)
;;   (message
;;    (if (let (window (get-buffer-window (current-buffer)))
;; 	 (set-window-dedicated-p window 
;; 				 (not (window-dedicated-p window))))
;;        "Window '%s' is dedicated"
;;      "Window '%s' is normal")
;;    (current-buffer)))
;; (global-set-key [f2] 'tog)



;; 					;##############################
;; 					;#### Highlight Error Line ####
;; 					;##############################
;; (require 'custom) 
;; (defvar all-overlays ())
;; (defun delete-this-overlay(overlay is-after begin end &optional len)
;;   (delete-overlay overlay)
;;   )
;; (defun highlight-current-line()
;;   (interactive)
;;   (setq current-point (point))
;;   (beginning-of-line)
;;   (setq beg (point))
;;   (forward-line 1)
;;   (setq end (point))
;;   ;; Create and place the overlay
;;   (setq error-line-overlay (make-overlay 1 1))

;;   ;; Append to list of all overlays
;;   (setq all-overlays (cons error-line-overlay all-overlays))

;;   (overlay-put error-line-overlay
;; 	       'face '(background-color . "red"))
;;   (overlay-put error-line-overlay
;; 	       'modification-hooks (list 'delete-this-overlay))
;;   (move-overlay error-line-overlay beg end)
;;   (goto-char current-point)
;;   )

;; (defun delete-all-overlays()
;;   (while all-overlays
;;     (delete-overlay (car all-overlays))
;;     (setq all-overlays (cdr all-overlays))
;;     )
;;   )

;; (defun highlight-error-lines(compilation-buffer process-result)
;;   (interactive)
;;   (delete-all-overlays)
;;   (condition-case nil
;;       (while t
;; 	(next-error)
;; 	(highlight-current-line)
;; 	(save-excursion
;; 	  (compilation-next-error-function 0)
;; 	  (highlight-current-line))
;; 	)
;;     (error nil))
;;   )
;; (setq compilation-finish-function 'highlight-error-lines) 


																				;################################
																				;#### Kills *scratch* buffer ####
																				;################################

;; (defun remove-scratch-buffer ()
;;   (if (get-buffer "*scratch*")
;;       (kill-buffer "*scratch*")))
;; (add-hook 'after-change-major-mode-hook 'remove-scratch-buffer)



																				;####################################
																				;#### Kills *Compile-Log* buffer ####
																				;####################################



																				;(defun remove-compile-buffer ()
																				;(if (get-buffer "*Compile-Log*")
																				;(kill-buffer "*Compile-Log*")))		
																				;(add-hook 'after-change-major-mode-hook 'remove-compile-buffer)



																				;#############################
																				;#### Mini Compile Window ####
																				;#############################




;; (defun my-compile ()
;;   "Run compile and resize the compile window"
;;   (interactive)
;;   (progn
;;     (call-interactively 'compile)
;;     (setq cur (selected-window))
;;     (setq w (get-buffer-window "*compilation*"))
;;     (select-window w)
;;     (setq h (window-height w))
;;     (shrink-window (- h 10))
;;     (select-window cur)
;;     )
;;   )

;; (defun my-compilation-hook () 
;;   "Make sure that the compile window is splitting vertically" 
;;   (progn
;;     (if (not (get-buffer-window "*compilation*"))
;; 	(progn
;; 	  (split-window-vertically)
;; 	  )
;;       )
;;     )
;;   );;this breaks slime mode compile sadly need to add a hook for c-mode so there's no interaction happening. 
;; (add-hook 'compilation-mode-hook 'my-compilation-hook) ; uncomment to get this working

