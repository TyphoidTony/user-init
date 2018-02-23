(defun my-elisp-mode()

  (auto-revert-mode)
  (rainbow-delimiters-mode)
  (pretty-mode)

  )


(add-hook 'emacs-lisp-mode-hook
					(lambda ()
						;;(pretty-mode)
						(my-elisp-mode)

						))



