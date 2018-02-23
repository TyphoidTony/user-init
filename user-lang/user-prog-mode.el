;; (add-hook 'prog-mode-hook
;; 					(lambda ()

;; 						;; (flyspell-prog-mode)
;; 						(global-aggressive-indent-mode 1)
;; 						(hl-todo-mode)
;; 						(linum-mode 1)
;; 						(rainbow-delimiters-mode)
;; 						(hs-minor-mode)
;; 						(flycheck-mode)
;; 						(auto-revert-mode)


;; 						;; (semantic-mode )
;; 						;; (global-semantic-idle-scheduler-mode)
;; 						(yas-minor-mode-on)

;; 						))


(add-hook 'prog-mode-hook
					'flycheck-mode)



(use-package prog-mode

	;;	:ensure t


	:config 
	;; (flyspell-prog-mode)
	(global-aggressive-indent-mode 1)
	(hl-todo-mode 1)
	(linum-mode 1)
	;;	(rainbow-delimiters-mode 1)
	;;	(rainbow-identifiers-mode 1)
	(hs-minor-mode)
	(flycheck-mode )
	(auto-revert-mode)


	;; (semantic-mode )
	;; (global-semantic-idle-scheduler-mode)
	(yas-minor-mode-on)

  :bind
  ("C-c i" . iedit-mode)
  ("C-c [" . neotree-toggle)


  )


