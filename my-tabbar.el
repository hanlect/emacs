;;;;;;;;;;;; TAB BAR ;;;;;;;;;;;;;;;;;;
(set-face-attribute
 'tabbar-default-face nil
 :background "gray60")
(set-face-attribute
 'tabbar-unselected-face nil
 :background "gray85"
 :foreground "gray30"
 :box nil)
(set-face-attribute
 'tabbar-selected-face nil
 :background "#f2f2f6"
 :foreground "black"
 :box nil)
(set-face-attribute
 'tabbar-button-face nil
 :box '(:line-width 1 :color "gray72" :style released-button))
(set-face-attribute
 'tabbar-separator-face nil
 :height 1.1)

;; (setq tabbar-buffer-groups-function
;;           (lambda (buffer)
;;             (list "All buffers")))


(when (require 'tabbar nil t)
 (setq tabbar-buffer-groups-function
    	(lambda (b) (list "All Buffers")))
      (setq tabbar-buffer-list-function
    	(lambda ()
    	  (remove-if
    	   (lambda(buffer)
    	     (find (aref (buffer-name buffer) 0) " *"))
    	   (buffer-list))))
      (tabbar-mode))

(tabbar-mode 1)
(define-key global-map [(control meta ?h)] 'tabbar-backward)
(define-key global-map [(control meta ?l)] 'tabbar-forward)