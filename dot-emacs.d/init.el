(when window-system
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)


(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages
  '(starter-kit starter-kit-lisp starter-kit-bindings
                starter-kit-js starter-kit-ruby
                ;; Auto complete
                popup auto-complete
                ;; Clojure stuff
                clojure-mode clojure-test-mode clojurescript-mode
                slime slime-repl clojure-project-mode
                nrepl ac-nrepl
                slime slime-repl ac-slime
                ;; slime-fuzzy -- screws up slime-repl, don't install
                ;; Fuzzy match
                fuzzy fuzzy-match
                ;; ido-better-flex -- screws up textmate, don't install
                ;; multiple-cursors
                multiple-cursors
                ;; Tab bar
                tabbar tabbar-ruler
                ;; Eye-candy
                highlight-parentheses highline col-highlight crosshairs vline
                highlight-symbol hl-sexp idle-highlight
                rainbow-delimiters
                maxframe
                fill-column-indicator
                ;; Text mate
                textmate
                ;; regex match
                all alpha
                ;; Paren matching
                mic-paren
                ;; Ruby stuff
                ruby-end
                ;; Color themes
                zenburn-theme solarized-theme)
  "A list of packages to ensure are installed at launch.")

(require 'cl)

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
)



;; Rainbow delimiters
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)


;; Auto complete
(require 'auto-complete)
(global-auto-complete-mode t)


;; Right margin - http://www.emacswiki.org/emacs/FillColumnIndicator
(require 'fill-column-indicator)
(setq fci-style 'shading)            ; 'shading (default) or 'rule
(add-hook 'find-file-hook 'fci-mode) ; or (add-hook 'c-mode-hook 'fci-mode) for C files
(setq fci-rule-width 2)              ; Value can be 1 to 6
(setq fci-rule-color "blue")         ; gray (default) or darkblue or whatever
(setq-default fill-column 80)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("d2622a2a2966905a5237b54f35996ca6fda2f79a9253d44793cfe31079e3c92b" "501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" "72cc9ae08503b8e977801c6d6ec17043b55313cda34bcf0e6921f2f04cf2da56" "f5e56ac232ff858afb08294fc3a519652ce8a165272e3c65165c42d6fe0262a0" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
