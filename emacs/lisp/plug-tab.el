(use-package centaur-tabs
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("C-c k" . centaur-tabs-backward)
  ("C-c h" . centaur-tabs-backward)
  ("C-c j" . centaur-tabs-forward)
  ("C-c l" . centaur-tabs-forward))

(provide 'plug-tab)
