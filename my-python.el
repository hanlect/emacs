;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Python mode customizations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; Python mode
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode)
                                       interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)

(set-variable 'py-indent-offset 4)
(set-variable 'py-smart-indentation nil)
(set-variable 'indent-tabs-mode nil)



;; IPython
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




;; Flymake and Pylint
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


 ;;pdb setup, note the python version
 (setq pdb-path '/usr/lib/python2.6/pdb.py
       gud-pdb-command-name (symbol-name pdb-path))
 (defadvice pdb (before gud-query-cmdline activate)
   "Provide a better default command line when called interactively."
   (interactive
    (list (gud-query-cmdline pdb-path
	 		    (file-name-nondirectory buffer-file-name)))))




