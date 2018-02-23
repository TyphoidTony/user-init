(use-package company
  :defer t
  
  :init
  (global-company-mode)

  ;; :bind
  ;; ("RET" . company-complete-selection)

  :config
  (define-key company-active-map (kbd "RET") 'company-complete-selection)
  (setq company-idle-delay 0)
  )
(provide 'user-company-mode)
