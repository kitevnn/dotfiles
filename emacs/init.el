;; file structure
;; elisp
;; ├── icon
;; │   └── icon-nerdfont.el
;; ├── init
;; │   ├── init-elpa.el
;; │   ├── init-keybindings.el
;; │   ├── init-keyutils.el
;; │   ├── init-restart.el
;; │   └── init-startup.el
;; ├── note
;; │   └── note-orgmode.el
;; ├── plug
;; │   ├── plug-avy.el
;; │   ├── plug-clipboard.el
;; │   ├── plug-cmp.el
;; │   ├── plug-crux.el
;; │   ├── plug-dashboard.el
;; │   ├── plug-deadgrep.el
;; │   ├── plug-dirvish.el
;; │   ├── plug-focus.el
;; │   ├── plug-format.el
;; │   ├── plug-goto-tags.el
;; │   ├── plug-hlsymbol.el
;; │   ├── plug-indent.el
;; │   ├── plug-ivy.el
;; │   ├── plug-lsp.el
;; │   ├── plug-moveline.el
;; │   ├── plug-pair.el
;; │   ├── plug-project-management.el
;; │   ├── plug-snip.el
;; │   ├── plug-statusbar.el
;; │   ├── plug-tab.el
;; │   ├── plug-textconversion.el
;; │   ├── plug-undo.el
;; │   └── plug-whichkey.el
;; └── theme
;;     ├── theme-ample.el
;;     ├── theme-bright.el
;;     └── theme-flatwhite.el

;; load-path ~/.config/emacs/lisp/icon/
(add-to-list 'load-path
             (expand-file-name (concat user-emacs-directory "elisp/icon")))
;; load-path ~/.config/emacs/lisp/init/
(add-to-list 'load-path
             (expand-file-name (concat user-emacs-directory "elisp/init")))
;; load-path ~/.config/emacs/lisp/plug/
(add-to-list 'load-path
             (expand-file-name (concat user-emacs-directory "elisp/plug")))
;; load-path ~/.config/emacs/lisp/theme/
(add-to-list 'load-path
             (expand-file-name (concat user-emacs-directory "elisp/theme")))
;; load-path ~/.config/emacs/lisp/note/
(add-to-list 'load-path
             (expand-file-name (concat user-emacs-directory "elisp/note")))





;; -- /note/ --
(require 'note-orgmode)       ;; 

;; -- /icon/ --
(require 'icon-nerdfont)      ;; 

;; -- /init/ --
(require 'init-elpa)          ;; 
(require 'init-startup)       ;; 
(require 'init-restart)       ;; 
(require 'init-keyutils)      ;; 
(require 'init-keybindings)   ;; 

;; -- /theme/ --
(require 'theme-flatwhite)
;; (require 'theme-bright)    ;; 
;; (require 'theme-ample)     ;; 

;; -- /plug/ -- 
(require 'plug-cmp)           ;; 
(require 'plug-tab)           ;; 
(require 'plug-statusbar)     ;; 
(require 'plug-focus)         ;; 
(require 'plug-avy)           ;; 
(require 'plug-crux)          ;; 
(require 'plug-indent)        ;; 
(require 'plug-hlsymbol)      ;; 
(require 'plug-dirvish)       ;; 
(require 'plug-whichkey)      ;; 
(require 'plug-pair)          ;; 
(require 'plug-clipboard)     ;; 
(require 'plug-moveline)      ;; 
(require 'plug-undo)          ;; 
(require 'plug-snip)          ;; 
(require 'plug-textconversion);; 
(require 'plug-format)        ;; 
(require 'plug-lsp)           ;; 
(require 'plug-deadgrep)      ;; 
(require 'plug-dashboard)     ;; 
;; (require 'plug-ivy)        ;; 
;; (require 'plug-spell)      ;; 

