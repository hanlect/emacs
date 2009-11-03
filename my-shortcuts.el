;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;         TEXT-EDITING
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key [S-left] 'windmove-left)          ; move to left window
(global-set-key [S-right] 'windmove-right)        ; move to right window
(global-set-key [S-up] 'windmove-up)              ; move to upper window
(global-set-key [S-down] 'windmove-down)          ; move to lower window

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-c c") 'kill-ring-save)
;; ;; cursor movement keys (single character)
(global-set-key "\M-h" 'backward-char) ; defaults to `indent-new-comment-line'
(global-set-key "\M-l" 'forward-char)   ; defaults to `downcase-word'
(global-set-key "\M-j" 'previous-line)  ; defaults to `tab-to-tab-stop'
(global-set-key "\M-k" 'next-line)  ; defaults to `tab-to-tab-stop'
(global-set-key [(control meta ?k)] 'scroll-up)
(global-set-key [(control meta ?j)] 'scroll-down)

(global-set-key (kbd "<f1>") 'save-buffer);
(global-set-key (kbd "<f2>") 'kill-buffer);
(global-set-key (kbd "<f3>") 'comment-region);
(global-set-key (kbd "<f4>") 'uncomment-region); mark
(global-set-key (kbd "<f5>") 'recentf-open-files);
(global-set-key (kbd "<f6>") 'dired);
(global-set-key (kbd "<f8>") 'magit-status);

;; cycle through buffers with Ctrl-Tab (like Firefox)
(global-set-key (kbd "<C-tab>") 'bury-buffer)
(global-set-key "\M-\-" 'dabbrev-expand)

;; goto line function C-c C-g
(global-set-key [ (control c) (control g) ] 'goto-line)
(global-set-key (kbd "<M-S-return>") 'multi-term)
;; (global-set-key (kbd "<f9>") 'dabbrev-expand); 
;; (global-set-key (kbd "<f7>") 'yank); paste
;; (global-set-key (kbd "<f8>") 'kill-region); delete
;; (global-set-key (kbd "<f11>") 'dired); switch file
;; (global-set-key (kbd "<f12>") 'my-kill); kill buffer
;; (global-set-key (kbd "<print>") 'my-jump)