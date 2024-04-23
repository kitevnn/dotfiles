(require 'dashboard)

;; Set the title
(setq dashboard-banner-logo-title "
󰙱 Welcome to Emacs Dashboard 
")
;;  󱓞 󱓟

;; Set the banner
(setq dashboard-startup-banner 'logo)  

;; Value can be:
;;  - 'official which displays the official emacs logo.
;;  - 'logo which displays an alternative emacs logo.
;;  - an integer which displays one of the text banners
;;    (see dashboard-banners-directory files).
;;  - a string that specifies a path for a custom banner
;;    currently supported types are gif/image/text/xbm.
;;  - a cons of 2 strings which specifies the path of an image to use
;;    and other path of a text file to use if image isn't supported.
;;    ("path/to/image/file/image.png" . "path/to/text/file/text.txt").
;;  - a list that can display an random banner,
;;    supported values are: string (filepath), 'official, 'logo and integers.

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)
;; vertically center content
(setq dashboard-vertically-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)

(setq dashboard-items '((recents   . 5)
                        (bookmarks . 5)
                        (projects  . 5)
                        (agenda    . 5)
                        (registers . 5)))

(setq dashboard-startupify-list '(dashboard-insert-banner         ;; 
                                  dashboard-insert-banner-title   ;; 
                                  dashboard-insert-footer         ;; 
                                  dashboard-insert-navigator      ;; 
                                  dashboard-insert-newline        ;; 
                                  dashboard-insert-items          ;; 
                                  dashboard-insert-newline        ;; 
                                  dashboard-insert-init-info))


(setq dashboard-navigation-cycle t)                   ;; To enable cycle navigation between each section:
(setq dashboard-heading-shorcut-format " [%s]")       ;; To customize string format in shortcuts:
(setq dashboard-item-shortcuts '((recents   . "r")
                                 (bookmarks . "m")
                                 (projects  . "p")
                                 (agenda    . "a")
                                 (registers . "e")))  ;; To customize item shortcuts:

;; To modify heading icons with another icon from nerd-icons octicons:
(dashboard-modify-heading-icons '((recents   . "nf-oct-graph")
                                  (bookmarks . "nf-oct-book")
                                  (projects  . "nf-oct-project_symlink")
                                  (agenda    . "nf-oct-briefcase")
                                  (registers . "nf-oct-paperclip")))

(setq dashboard-item-names '(("Recent Files:"               . "Recently opened files:")
                             ("Agenda for today:"           . "Today's agenda:")
                             ("Agenda for the coming week:" . "Agenda:")))  ;; To modify the widget heading name:


;; all-the-icons
;; (setq dashboard-icon-type 'all-the-icons)  ; use `all-the-icons' package  To use all-the-icons package:
;; (dashboard-modify-heading-icons '((recents   . "file-text")  ;; To modify heading icons with another icon from all-the-icons octicons:
;;                                   (bookmarks . "book")))     ;; To modify heading icons with another icon from all-the-icons octicons:

;; nerd-icons
(setq dashboard-display-icons-p t)     ; display icons on both GUI and terminal  To use nerd-icons package:
(setq dashboard-icon-type 'nerd-icons) ; use `nerd-icons' package                To use nerd-icons package:
(setq dashboard-set-heading-icons t)  ;; To add icons to the widget headings and their items:
(setq dashboard-set-file-icons t)     ;; To add icons to the widget headings and their items:


;; To use it with counsel-projectile or persp-projectile
;; 
;; (setq dashboard-projects-switch-function 'counsel-projectile-switch-project-by-name)
;; 
;; Or
;; 
;; (setq dashboard-projects-switch-function 'projectile-persp-switch-project)



;; (add-to-list 'dashboard-items '(agenda) t)  ;; To display today’s agenda items on the dashboard, add agenda to dashboard-items:
;; (setq dashboard-week-agenda t)              ;; To show agenda for the upcoming seven days set the variable dashboard-week-agenda to t.
;; (setq dashboard-filter-agenda-entry 'dashboard-no-filter-agenda)  ;; By default org-agenda entries are filter by time, only showing those task with DEADLINE, SCHEDULE-TIME or TIMESTAMP . To show all agenda entries (except DONE)



(dashboard-setup-startup-hook)

(provide 'plug-dashboard)
