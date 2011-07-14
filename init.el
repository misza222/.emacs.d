;;; init.el
;; should work on >= emacs.23

;; remove window features that are not necessary
(if (fboundp 'menu-bar-mode) (menu-bar-mode nil))
(if (fboundp 'tool-bar-mode) (tool-bar-mode nil))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode nil))

;; Set load path
(setq dotfiles-dir (file-name-directory
		    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; load additional files
(load "bindings")
(load "misc")
(load "ruby")

;; Keep system or user specific customizations here
(setq system-specific-config (concat dotfiles-dir "host%" system-name ".el"))
(if (file-exists-p system-specific-config) (load system-specific-config))

;;(load "server")
;;(unless (server-running-p) (server-start))
;;; init.el ends here

;; elpa added config below
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

