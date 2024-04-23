(setq inhibit-startup-screen t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(winner-mode 1)

(set-face-attribute 'default nil 
                    :height 150
                    :font "SauceCodeProNerdFontCompleteMono Nerd Font")

(fido-mode t)

(add-hook 'prog-mode 'hs-minor-mode)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(when (get-buffer "*scratch*") 
  (kill-buffer "*scratch*"))


(provide 'init-startup)

