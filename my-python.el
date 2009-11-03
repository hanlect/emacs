;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python mode customizations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode)
                                       interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)



(setq ipython-command "/usr/bin/ipython")
(setq py-python-command-args '("-pylab" "-colors" "Linux"))
(require 'ipython)



(setq ipython-completion-command-string "print(';'.join(__IP.Completer.all_completions('%s')))\n")



(require 'comint)
(define-key comint-mode-map [(meta p)]
'comint-previous-matching-input-from-input)
(define-key comint-mode-map [(meta n)]
'comint-next-matching-input-from-input)
(define-key comint-mode-map [(control meta n)]
'comint-next-input)
(define-key comint-mode-map [(control meta p)]
'comint-previous-input)



(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
		       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "epylint" (list local-file))))
  
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))



;; (load-library "python")
;;(add-hook 'python-mode-hook '(lambda () (define-key python-mode-map "\C-m" 'newline-and-indent)))
;; (setq eldoc-idle-delay 0)
;; (autoload 'turn-on-eldoc-mode "eldoc" nil t)

;; (add-hook 'python-mode-hook


;;           '(lambda () (eldoc-mode 1)) t)


;; (defun my-insert-debug ()
;;   "Insert debugging statement on the current line"
;;   (interactive)
;;   (save-excursion
;;   (insert "pdb.set_trace()")
;;   (newline-and-indent)))
;; (define-key	python-mode-map	(kbd "C-;")	'my-insert-debug)



