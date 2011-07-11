(windmove-default-keybindings) ;; shift + arrow to move between windows

(global-set-key (kbd "M-/") 'hippie-expand)

(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-x m") 'eshell) ;; start