(use-package nerd-icons
  :custom (nerd-icons-font-family "Symbols Nerd Font Mono")
)

(use-package nerd-icons-completion
  :config
  (nerd-icons-completion-mode))

(use-package nerd-icons-dired
  :hook
  (dired-mode . nerd-icons-dired-mode))

(provide 'icon-nerdfont)
