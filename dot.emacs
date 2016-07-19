(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(defvar my-packages
  '(evil
    evil-leader
    helm
    company
    linum-relative
    projectile
    helm-projectile
    magit
    coffee-mode
    helm-ag
    solarized-theme
    ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
(package-install p)))

(require 'evil)
(evil-mode 1)
(projectile-global-mode)
(global-set-key (kbd "M-x") 'helm-M-x)

(global-company-mode)
(require 'whitespace) ; need to think about this
(linum-relative-global-mode)
(load-theme 'solarized-light t)
(custom-set-variables '(coffee-tab-width 2))
(setq-default indicate-empty-lines t)
(setq make-backup-files nil)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "g s" 'magit-status
  "g l" 'magit-log-all
  "f" 'helm-projectile
  "b" 'helm-mini
  "a" 'helm-do-ag-project-root)
