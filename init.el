;(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(eval-when-compile
  (require 'req-package))

(setq conf-dir
      (expand-file-name "conf" user-emacs-directory))
(setq lib-dir
      (expand-file-name "lib" user-emacs-directory))
(setq macros-dir
      (expand-file-name "macros" user-emacs-directory))

(add-to-list 'load-path lib-dir)
(add-to-list 'load-path macros-dir)

(let ((default-directory lib-dir))
  (normal-top-level-add-subdirs-to-load-path))

(let ((default-directory conf-dir))
  (setq load-path
        (append
         (let ((load-path (copy-sequence load-path))) ;; Shadow
           (append
            (copy-sequence (normal-top-level-add-to-load-path '(".")))
            (normal-top-level-add-subdirs-to-load-path)))
         load-path)))

(require 'bleadof-macros)
(require 'packages-conf)
(require 'path-conf)
(require 'appearance-conf)
(require 'keybindings-conf)
(require 'backups-conf)
(require 'sane-defaults-conf)
(require 'fundamentals-conf)
(require 'documentation-conf)

;; Packages and features
(require 'lang-confs)
(require 'web-conf)
(require 'productivity-conf)
(require 'writing-conf)
(req-package-finish)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 '(package-selected-packages
   (quote
    (rjsx-mode company-ghci haskell-mode helm-hoogle shm cider-eval-sexp-fu clj-refactor rainbow-delimiters yaml-mode whitespace-cleanup-mode web-mode web-beautify undo-tree stylus-mode string-inflection smartparens slime-company skewer-mode scss-mode scratches req-package prodigy popwin php-refactor-mode php-mode pallet package-utils org-trello org-present org-journal omnisharp nyan-mode notmuch-labeler multiple-cursors markdown-mode magit jdee idle-highlight-mode htmlize highlight-indent-guides helm-swoop helm-projectile helm-gtags helm-dash helm-cider helm-ag gh flycheck-cask expand-region exec-path-from-shell ensime elm-mode drag-stuff dictionary dash-at-point company-web company-tern company-emoji company-coq color-theme coffee-mode buffer-move browse-kill-ring ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ediff-even-diff-A ((((class color) (background dark)) (:background "dark red"))))
 '(ediff-even-diff-B ((((class color) (background dark)) (:background "dark green"))))
 '(ediff-odd-diff-A ((((class color) (background dark)) (:background "dark red"))))
 '(ediff-odd-diff-B ((((class color) (background dark)) (:background "dark green"))))
 '(mumamo-background-chunk-major ((((class color) (background dark)) (:background "black"))))
 '(mumamo-background-chunk-submode1 ((((class color) (background dark)) (:background "black")))))
(put 'downcase-region 'disabled nil)
