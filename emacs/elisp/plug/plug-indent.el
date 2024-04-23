(require 'highlight-indentation)
(require 'aggressive-indent)


(add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
(add-hook 'C-lisp-mode-hook     #'aggressive-indent-mode)


(set-face-background 'highlight-indentation-face "#d2ebe3")                 ;; f7e0c3 | e3e3d3 | d2ebe3
(set-face-background 'highlight-indentation-current-column-face "#d2ebe3")  ;; c3b3b3 | d2ebe3

(provide 'plug-indent)
