
;; Show scrollbar on the right, hide the icons
(setq scroll-bar-mode-explicit t)
(set-scroll-bar-mode `right) 
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; Font lock and paren highlight
(global-font-lock-mode 1)
(setq show-paren-delay 0)
(show-paren-mode 1)

(mouse-wheel-mode 1)

;; set default color theme
(color-theme-initialize)
;; (color-theme-emacs-21)
(color-theme-pebcas)


;; Highlight current line
;;(global-hl-line-mode 1)
;;(set-face-foreground 'hl-line nil)
;;(set-face-background 'hl-line "#dedede") ;; #222222 se lo voglio un pò più visibile

;; Window frame title   
(setq frame-title-format "%b")
(setq icon-title-format "[%b]")
;; line length is 90 chars
(setq fill-column 90)
(setq-default comment-coulumn 90)


(setq transient-mark-mode t)
(setq inhibit-startup-message t)
(setq default-major-mode 'text-mode)



(setq mark-even-if-inactive t)
(setq-default search-highlight t)
(copy-face 'highlight 'isearch)
; highlight during query
(setq query-replace-highlight t)        
; highlight incremental search
(setq search-highlight t) 
;make the y or n suffice for a yes or no question
(fset 'yes-or-no-p 'y-or-n-p)
;;;;What it says. Keeps the cursor in the same relative row during
;;;;pgups and dwns.
(setq scroll-preserve-screen-position t)
 ;;;;;Accelerate the cursor when scrolling.
(load "accel" t t)
;;;;; Scroll in a decent way (not skippy)
(setq scroll-conservatively 10000)

;; turn off the annoying alarm bell
(setq ring-bell-function 'ignore)



;; cursor as a bar is much nicer 
(setq initial-frame-alist
  (cons '(cursor-type . bar)
            (copy-alist initial-frame-alist)
   )
)
(setq default-frame-alist
   (cons '(cursor-type . bar)
             (copy-alist default-frame-alist)
    )
)


