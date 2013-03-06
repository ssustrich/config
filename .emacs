(getenv "PATH")
 (setenv "PATH"
(concat
 "/usr/texbin" ":" "/usr/local/bin/pdf2dsc/" ":"

(getenv "PATH")))

(set-frame-height (selected-frame) 37)
(set-frame-width (selected-frame) 155)
;; Show line and column information
(line-number-mode 1)
(column-number-mode 1)

;; Automagicly load abreviations table
(setq-default abbrev-mode t)
(setq save-abbrevs t)

;;Set the highlight current line minor mode;;
(global-hl-line-mode 1)

;;Start with 3 windows. Having it split vertically then horizantly
;;Opposite  of how I would do it with Ctrl-x 2 then Ctrl-x 1 when 
;;running but it works....
(split-window-vertically -7)
(split-window-horizontally -60)

(other-window 1)
(other-window 1)
(rename-buffer "Shell")
(shell)
(other-window 1)

;;only using this beucase I cant get fci-rule-column to work
(setq-default fill-column 80)

(add-to-list 'load-path "~/.emacs.d/")
(require 'fill-column-indicator)
(setq fci-rule-column 80)
(setq fci-rule-color "darkblue")

(add-hook 'c-mode-hook 'fci-mode)
(add-hook 'java-mode-hook 'fci-mode)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(setq inhibit-splash-screen t)
