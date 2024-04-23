(require 'yasnippet)
(yas-global-mode 1)

(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)


(require 'yasnippet-snippets)


(provide 'plug-snip)
