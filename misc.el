;; make hippe expand less agressive
(delete 'try-expand-line hippie-expand-try-functions-list)
(delete 'try-expand-list hippie-expand-try-functions-list)
(delete 'try-complete-file-name-partially hippie-expand-try-functions-list)
(delete 'try-complete-file-name hippie-expand-try-functions-list)

(setq backup-directory-alist `(("." . ,(expand-file-name
                                        (concat dotfiles-dir "backups")))))
(setq x-select-enable-clipboard t) ;; integrate with clipboard

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (mouse-wheel-mode t)
  (blink-cursor-mode -1))

(add-hook 'before-make-frame-hook 'turn-off-tool-bar)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(ansi-color-for-comint-mode-on)

(setq inhibit-startup-message t
      visible-bell t
      require-final-newline t
      column-number-mode t

      ;; Allows traversing through mark ring with C-<SPC> after first C-u C-<SPC>
      set-mark-command-repeat-pop t)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(define-key global-map (kbd "C-x C-r") 'recentf-open-files)

(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.css$" . css-mode))
(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.js\\(on\\)?$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.xml$" . nxml-mode))
