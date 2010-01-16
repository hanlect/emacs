
;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)




(org-remember-insinuate)
(setq org-directory "~/ORG")
(setq org-default-notes-file (concat org-directory "/todo.org"))
(define-key global-map "\C-cr" 'org-remember)
(add-hook 'org-mode-hook 'turn-on-auto-fill)


(setq org-remember-templates
   '(("Todo" ?t "* TODO %?\n  %i\n  %a" "~/ORG/todo.org" "Tasks")
     ("Note" ?i "* %^{Title}\n  %i\n" "~/ORG/notes.org" "Notes")
     ("Bookmark" ?w "* %c\n  - Date: %U\n  - Link: %:link\n  - Snip:\n\n    %?%:region\n\n" "~/ORG/bookmarks.org" "Bookmarks" )))
