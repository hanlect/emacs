(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")

(progn (cd "~/.emacs.d")
       (normal-top-level-add-subdirs-to-load-path))

(progn (cd "~/.emacs.d/vendor")
       (normal-top-level-add-subdirs-to-load-path))


(server-start)

(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")
(require 'ecb)


(setq load-path (cons "~/.emacs.d/vendor/orgdir" load-path))
(require 'org-install)
;;(require 'planner)

(require 'color-theme)
(require 'color-theme-pebcas)
(require 'tabbar)
(require 'org-annotation-helper)
(require 'remember)

(require 'magit)

(setq load-path (cons "~/.emacs.d/vendor/ess/lisp" load-path))
(require 'ess-site)


(ido-mode 1)
(setq tramp-default-method "ssh")



;; Load interface stuff
(load-library "my-interface")

;; Spellcheck
(load-library "my-spellcheck")

;; Latex mode custom
(load-library "latex")

;; tabbar settings
(load-library "my-tabbar")

;; utilities
(load-library "my-utilities")

;; magit
(load-library "my-magit")

;; org
(load-library "my-org")

;; shortcuts
(load-library "my-shortcuts")

;; python-mode
(load-library "my-python")
(load-library "my-yasnippet")

;; terminal
(require 'multi-term)
(setq multi-term-program "/bin/bash")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((TeX-master . "../thesis")))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-link ((((class color) (background dark)) (:foreground "LightBlue" :underline t)))))
