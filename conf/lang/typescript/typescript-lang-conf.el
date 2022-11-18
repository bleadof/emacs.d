(defun setup-ts ()
  (interactive)
  (add-node-modules-path)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (web-mode)
  (flycheck-mode)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (company-mode)
  (prettier-js-mode)
  (smartparens-mode))

(use-package add-node-modules-path
  :ensure t)

(use-package prettier-js
  :ensure t)

(use-package smartparens
  :ensure t)

(use-package typescript-mode
  :ensure t
  :hook ((typescript-mode . lsp-deferred)
          (typescript-mode . setup-ts))
  :mode (("\\.ts\\'" . typescript-mode)
         ("\\.tsx\\'" . typescript-mode)))

(provide 'typescript-lang-conf)
