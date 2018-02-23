																				;	    (define-key helm-gtags-mode-map (kbd "M-s") )



;; (add-hook 'c-mode-hook
;; 	  (add-to-list 'company-backends 'company-gtags))


(use-package c-mode
	;;  :defer t
  :mode
  "\\.h\\'"

  :init
	;;  (add-hook 'c-mode-hook 'helm-gtags-mode)
  ;;  (add-hook 'c-mode-hook 'linum-mode)

	;;  (use-package helm-gtags-mode)
	;;  (use-package linum-mode )
  :config

  ;;  (define-key 'c-mode-map (kbd "C-c i") 'iedit-mode)
  ;;  (use-package helm-gtags-mode )
  ;;  (use-package linum-mode )
  :bind
  ( [f10] . compile)
  ;; ("C-c i" . iedit-mode)
  )

(setq-default c-basic-offset 8
							tab-width 2
							indent-tabs-mode t)

;;(define-key 'c-mode-map (kbd "C-c i") 'iedit-mode)



