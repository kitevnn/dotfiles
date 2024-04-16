;; 
;; load-path: ~/.config/emacs/lisp/
;; 
(add-to-list 'load-path
             (expand-file-name (concat user-emacs-directory "lisp")))

;; 
;; load-file: ~/.config/emacs/lisp/*.el
;; 

;; -- init -- 
(require 'init-elpa)
(require 'init-startup)
(require 'init-restart)

;; -- theme -- 
(require 'theme-bright)
;; (require 'theme-ample)

;; -- plugin --
(require 'plug-cmp)
(require 'plug-tab)

