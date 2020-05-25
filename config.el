;;; .doom.d/config.el -*- lexical-binding: t; -*-
;; Place your private configuration here

;; themes are THE MOST important setting
(require 'base16-theme)

;; Fonts too
(setq doom-theme 'base16-helios
      display-line-numbers-type 'relative)

;; (setq doom-font (font-spec :family "Iosevka" :size 16)
;;       doom-big-font (font-spec :family "Iosevka" :size 30)
;;       doom-variable-pitch-font (font-spec :family "Noto Sans" :size 14))

;; <=> >> >>= >>> <<< <- -> ->> <-> &&
(setq doom-font (font-spec :family "Source Code Pro" :size 16)
      doom-big-font (font-spec :family "Source Code Pro" :size 30)
      doom-variable-pitch-font (font-spec :family "Source Code Pro" :size 14))

;; Always softwrap
(global-visual-line-mode t)

;; Disable clipboard manager hanging for a few seconds on Wayland
(setq x-select-enable-clipboard-manager nil)

;; Projectile default directory for my projects
(setq projectile-project-search-path '("~/dev/"))

;; Rust development using shell.nix
(setq racer-rust-src-path nil)
(setq racer-cmd "racer")

;; Lets drag stuff aroung using hjk;
(map! :ne "C-S-k" #'drag-stuff-up)
(map! :ne "C-S-j" #'drag-stuff-down)
(map! :ne "C-S-l" #'drag-stuff-right)
(map! :ne "C-S-h" #'drag-stuff-left)

(map! :ne "SPC #" #'comment-or-uncomment-region)
(map! :ne "SPC =" #'indent-buffer)

(map! :ne "SPC j g" #'dumb-jump-go)
(map! :ne "SPC j b" #'dumb-jump-back)

(map! :ne "SPC s h" #'insert-random-hash)

;; Display a frame à la vscode at the top for M-x other things
(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-top-center))
      ivy-posframe-height-alist '((t . 10))
      ivy-posframe-parameters '((internal-border-width . 5)))
;;(setq ivy-posframe-border '((t (:background "#61BFFF"))))
(setq ivy-posframe-width 100)
(ivy-posframe-mode +1)

;; Don't push a new buffer when navigating with RETURN in dired
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; On vsplit using V, focus the new frame
(map! :ne "SPC w V" (lambda () (interactive)(evil-window-vsplit) (other-window 1)))

;; Load additionnal configuration packages
(load-file "~/.doom.d/personal/my-org.el")
(load-file "~/.doom.d/defuns/utils.el")

(map! [remap org-capture] nil)

;; (setq fancy-splash-image "~/.doom.d/sunglass.png")

(add-hook 'yaml-mode-hook 'electric-indent-local-mode)
