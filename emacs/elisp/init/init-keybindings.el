(global-set-key (kbd "C-c r")    'set-mark-command)                 ;; 
(global-set-key (kbd "C-c b")    'move-to-window-line-top-bottom)   ;; 


;; use-package
(global-set-key (kbd "M-m")    'list-packages)

;; reload
(global-set-key (kbd "M-o")    'load-file)

;; restart-emacs
(global-set-key (kbd "M-l")    'restart-emacs)

;; recover window   
(global-set-key (kbd "C-c C-w u")    'winner-undo)   ;; 
(global-set-key (kbd "C-c C-w r")    'winner-redo)   ;; 


;; switch window
(global-set-key (kbd "C-c C-w <left>")    'windmove-left)
(global-set-key (kbd "C-c C-w <down>")    'windmove-down)
(global-set-key (kbd "C-c C-w <up>")      'windmove-up)
(global-set-key (kbd "C-c C-w <right>")   'windmove-right)


;; switch buffer
(global-set-key (kbd "C-c C-s [")         'centaur-tabs-backward)
(global-set-key (kbd "C-c C-s ]")         'centaur-tabs-forward)


;; create buffer
(global-set-key (kbd "C-c C-b n")         'centaur-tabs--create-new-tab)

;; avy
(global-set-key (kbd "C-c C-s f")         'avy-goto-char-in-line)     ;; 


;; highlight-indentation
(global-set-key (kbd "C-c C-s i")         'highlight-indentation-mode)   ;; 

;; dirvish
(global-set-key (kbd "C-c C-s m")         'dirvish)                      ;; 
(global-set-key (kbd "C-c C-s q")         'dirvish-quit)                 ;; 

;; smartparens-mode 
(global-set-key (kbd "C-c C-s s")           'smartparens-mode)             ;; 

;; browse-kill-ring
(global-set-key (kbd "C-c C-s l")           'browse-kill-ring)             ;; 

;; move-text
(global-set-key (kbd "M-S-<up>")            'move-text-up)                 ;; 
(global-set-key (kbd "M-S-<down>")          'move-text-down)               ;; 

;; vundo
(global-set-key (kbd "C-c C-s v")           'vundo)                        ;; 


;; Yasnippet
(global-set-key (kbd "C-c C-y g")           'yas-global-mode)                        ;; 
(global-set-key (kbd "C-c C-y m")           'yas-minor-mode)                         ;; 




;; string-inflection: underscore -> UPCASE -> CamelCase
(global-set-key (kbd "C-c C-s c") 'string-inflection-all-cycle)
(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-s c") 'string-inflection-emacs-lisp-style-cycle)))
(add-hook 'C-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-s c") 'string-inflection-C-style-cycle)))

;; format-all
(global-set-key (kbd "C-c C-s r")             'format-all-region-or-buffer)

;; eglot
(global-set-key (kbd "C-c C-s p")             'eglot)

;; projectile
(global-set-key (kbd "C-c C-m i")         'projectile-mode)

;; project-explorer
(global-set-key (kbd "C-c C-m o")         'project-explorer-open)

;; deadgrep
(global-set-key (kbd "C-c C-d o")         'deadgrep)

;; OrgMode
(global-set-key (kbd "C-c l")         'org-store-link)   ;; 
(global-set-key (kbd "C-c a")         'org-agenda)       ;; 
(global-set-key (kbd "C-c c")         'org-capture)      ;; 


(provide 'init-keybindings)
