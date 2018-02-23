;;; File contains all the info regarding the 'look' of my emacs. 


(scroll-bar-mode -1)

(tool-bar-mode 0)
(menu-bar-mode 0)



(use-package gruvbox-theme)


(use-package rainbow-identifiers-mode 
  :defer t

	:init 
  (add-hook 'prog-mode-hook 'rainbow-identifiers-mode 1)

  )

(use-package rainbow-delimiters-mode

	:defer t

	:init
	(add-hook 'prog-mode-hook 'rainbow-delimiters-mode 1)
	)



(setq eshell-prompt-function
      (lambda ()
				(concat
				 (propertize "┌─[" 'face `(:foreground "#b8bb26"))
				 (propertize (user-login-name) 'face `(:foreground "#fb4934"))
				 (propertize "@" 'face `(:foreground "#b8bb26"))
				 (propertize (system-name) 'face `(:foreground "#83a598"))
				 (propertize "]──[" 'face `(:foreground "#b8bb26"))
				 (propertize (format-time-string "%I:%M %p" (current-time)) 'face `(:foreground "#fabd2f"))
				 (propertize "]──[" 'face `(:foreground "#b8bb26"))
				 (propertize (concat (eshell/pwd)) 'face `(:foreground "#ebdbb2"))
				 p	 (propertize "]\n" 'face `(:foreground "#b8bb26"))
				 (propertize "└─>" 'face `(:foreground "#b8bb26"))
				 (propertize (if (= (user-uid) 0) " # " " $ ") 'face `(:foreground "#b8bb26"))
				 )))


(use-package all-the-icons
  )




(use-package spaceline-config

  :config
  ;;  (spaceline-emacs-theme)
  (spaceline-helm-mode)
  (spaceline-info-mode)
  )



(use-package spaceline-all-the-icons
  :after spaceline
  :config 
	(spaceline-all-the-icons-theme)
  (spaceline-toggle-all-the-icons-time-off)
  (spaceline-toggle-all-the-icons-fullscreen)
  (spaceline-toggle-all-the-icons-sunset-on)
  (spaceline-toggle-all-the-icons-dedicated-on)
  (spaceline-toggle-all-the-icons-buffer-path-on)
  (spaceline-toggle-all-the-icons-time-on)
  (spaceline-toggle-all-the-icons-time-on)
	(setq spaceline-responsive nil)

  )




(set-face-attribute 'default nil :font "Fira Code Medium 16")

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
