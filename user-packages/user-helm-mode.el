;;; Package --- Summary
;;; Commentary:
;;; File contains all helm config

;;; Code:




(use-package helm-mode
  :defer t
  
  :bind
  ("M-x" . helm-M-x)
  ("C-x C-b" . helm-buffers-list)
  ("C-x b" . helm-mini)
  ("C-x C-;" . helm-bookmarks)
  ("C-x C-f" . helm-find-files)
  ("C-c f" . helm-flycheck)
  ("C-c ;" . helm-flyspell-correct)
  ("C-s" . swiper-helm)
  ("C-x k" . kill-buffer)
	("C-c C-f" . helm-recentf)
	("C-c C-l" . helm-minibuffer-history)
	("C-c h" . helm-show-kill-ring)
	("C-c C-p" . project-explorer-helm)

  :init
  (helm-projectile-on)
  (helm-mode 1)

  :config

  )


(use-package helm-gtags
	;;  :defer t

  :config
  (setq helm-gtags-auto-update t)
  (setq helm-gtags-use-input-at-cursor t)
  (setq helm-gtags-ignore-case t)

  )

(provide 'user-helm)
;;; suto-helm-mode ends here
