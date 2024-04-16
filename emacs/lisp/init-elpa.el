;; MELPA repo
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(require 'package)

(setq package-enable-at-startup nil)
(package-initialize)

(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-always-demand nil
      use-package-expand-minimally t
      use-package-verbose t)

(require 'use-package)

(provide 'init-elpa)
