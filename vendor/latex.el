(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode

(add-hook 'reftex-load-hook 'imenu-add-menubar-index)
(add-hook 'reftex-mode-hook 'imenu-add-menubar-index)
(add-hook 'LaTeX-mode-hook 'TeX-PDF-mode)

(setq TeX-output-view-style (quote (
                                    ("^pdf$" "." "evince %o")
                                    ("^ps$" "." "evince %o")
                                    ("^dvi$" "." "evince %o")
                                    )))

;;(add-to-list 'TeX-command-list '("View" "%V" TeX-run-discard nil t))