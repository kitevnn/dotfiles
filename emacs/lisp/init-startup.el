(setq inhibit-startup-screen t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :height 150)

(fido-mode t)

;; recovery the layout of window
;; - M-x winner-undo
;; - M-x winner-redo
(winner-mode 1)

;; goto the next window
(global-set-key (kbd "C-c b")    'windmove-left)
(global-set-key (kbd "C-c n")    'windmove-down)
(global-set-key (kbd "C-c p")    'windmove-up)
(global-set-key (kbd "C-c f")    'windmove-right)

;; HideShow
;; M-x hs-hide-all
;; M-x hs-show-all
;; M-x hs-hide-block
;; M-x hs-show-block
;; M-x hs-hide-initial-comment-block
;; M-x hs-show-initial-comment-block
(add-hook 'prog-mode 'hs-minor-mode)

(provide 'init-startup)

