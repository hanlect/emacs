;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;      SPELLCHECKING
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq ispell-program-name "aspell")
(setq ispell-dictionary "english")
(setq term-file-prefix nil)
;; Multilingual spell-checking
(defun my-ispell-lang( lang )
  (interactive "sLanguage  : it en ")
  (if (string-equal lang "it")
      (progn
        (ispell-change-dictionary "italian")))
  (if (string-equal lang "en")
      (progn
        (ispell-change-dictionary "english")
        )))