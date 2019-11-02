;;; .doom.d/config.el -*- lexical-binding: t; -*-
;; Place your private configuration here

;; themes are THE MOST important setting
(require 'base16-theme)

;; Fonts too
(setq doom-font (font-spec :family "Pragmata Pro Mono" :size 16)
      doom-theme 'base16-helios
      display-line-numbers-type 'relative
      doom-big-font (font-spec :family "Pragmata Pro Mono" :size 30))

(if (equal (display-pixel-width) 2560)
    (setq doom-font (font-spec :family "Pragmata Pro Mono" :size 20)
          doom-big-font (font-spec :family "Pragmata Pro Mono" :size 36))
  (setq doom-font (font-spec :family "Pragmata Pro Mono" :size 16)
        doom-big-font (font-spec :family "Pragmata Pro Mono" :size 30)))

;; Lets drag stuff aroung using hjk;
(map! :ne "C-S-k" #'drag-stuff-up)
(map! :ne "C-S-j" #'drag-stuff-down)
(map! :ne "C-S-h" #'drag-stuff-left)
(map! :ne "C-S-l" #'drag-stuff-right)

(map! :ne "SPC #" #'comment-or-uncomment-region)
(map! :ne "SPC =" #'indent-buffer)

;; Load additionnal configuration packages
(load-file "~/.doom.d/personal/my-org.el")
(load-file "~/.doom.d/defuns/utils.el")

;;
;; (js2-basic-offset 2)
;; (js-indent-level 2)

(setq fancy-splash-image "~/.doom.d/sunglass.png")
