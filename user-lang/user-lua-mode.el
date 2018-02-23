(require 'company)
(require 'company-lua)


(add-to-list 'auto-mode-alist '("\\.p8\\'" . lua-mode))
(add-hook 'lua-mode-hook 'auto-revert-mode)

(add-hook 'lua-mode-hook
					(lambda ()

						(auto-revert-mode)
						(company-lua--start-process 1)
						(setq add-to-list 'company-backends 'company-lua)
						))
