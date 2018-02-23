
(use-package flycheck-nim)




;;(setq nimsuggest-path "/usr/local/Cellar/nim/0.17.2/bin/nimsuggest")

(add-hook 'nim-mode-hook 'nimsuggest-mode)

(add-to-list 'company-backends
						 '(company-nim :with company-nim-builtin))



