;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;        BACKUP FILES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)       ; use versioned backups



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;        DOT-EMACS 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun dot-emacs ()
  "Visit .emacs"
  (interactive)
  (find-file "~/.emacs"))

(defun dot-reload ()
  "Reload .emacs"
  (interactive) 
  (load-file "~/.emacs"))


;; Make scripts executable on Save (saves having to do the chmod every time)
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; Set up recentf so I can get a list of recent files when I start
(recentf-mode 1)
;;(recentf-open-files nil "*Recent Files*")
(setq recentf-max-saved-items 10)

(require 'tempo)
(setq tempo-interactive t)



;; (require 'iswitchb)
;; (iswitchb-mode 1)

;; (defun iswitchb-local-keys ()
;;   (mapc (lambda (K) 
;; 	  (let* ((key (car K)) (fun (cdr K)))
;; 	    (define-key iswitchb-mode-map (edmacro-parse-keys key) fun)))
;; 	'(("<right>" . iswitchb-next-match)
;; 	  ("<left>"  . iswitchb-prev-match)
;; 	  ("<up>"    . ignore             )
;; 	  ("<down>"  . ignore             ))))

;; (add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)

(require 'ido)
(ido-mode t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;           MAIL
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'auto-mode-alist '("/mutt" . mail-mode))
(defun my-mail-mode-hook ()
  (auto-fill-mode 1)
  (abbrev-mode 1)
  (local-set-key "\C-Xk" 'server-edit))
(add-hook 'mail-mode-hook 'my-mail-mode-hook)