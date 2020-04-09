;;; init.el --- loads configuration
;;; Commentary: conf loading
;;; Code:
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(eval-when-compile
  (require 'use-package))

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
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(jdee-server-dir (expand-file-name "../../../vendor"))
 '(org-trello-current-prefix-keybinding "C-c o" nil (org-trello))
 '(package-selected-packages
   '(yaml-mode whitespace-cleanup-mode web-mode volatile-highlights use-package undo-tree tide terraform-mode stylus-mode string-inflection smartparens slime-company skewer-mode shm scss-mode scratches scala-mode sbt-mode rjsx-mode rainbow-delimiters python-x python-pytest pyimport pyenv-mode py-isort py-autopep8 psci psc-ide prodigy pretty-hydra prettier-js popwin pomidor plantuml-mode pipenv pip-requirements php-refactor-mode php-mode pallet package-utils org-trello org-journal omnisharp nyan-mode notmuch-labeler nose nodejs-repl magit lsp-ui jdee indent-tools idle-highlight-mode htmlize highlight-indent-guides helm-swoop helm-projectile helm-hoogle helm-gtags helm-dash helm-cider helm-ag gh flycheck-pyflakes flycheck-cython flycheck-cask fish-mode expand-region exec-path-from-shell elpy elm-mode ein drag-stuff doom-modeline dockerfile-mode docker discover-my-major discover dictionary dash-at-point dap-mode cython-mode cyberpunk-theme conda company-web company-tern company-quickhelp company-posframe company-lsp company-jedi company-ghci company-coq company-box company-anaconda coffee-mode clj-refactor cider-eval-sexp-fu buffer-move browse-kill-ring blacken beacon ag)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
