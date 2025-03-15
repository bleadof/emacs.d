;;; typescript-lang-conf.el --- loads ts configuration
;;; Commentary: conf loading
;;; Code:
(use-package add-node-modules-path
  :ensure t)

(use-package eldoc
:ensure t)

(use-package company
  :ensure t)

(use-package prettier-js
  :ensure t)

(use-package smartparens
  :ensure t)

(use-package lsp-eslint
  :demand t
  :after lsp-mode)

(provide 'typescript-lang-conf)
