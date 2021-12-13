(defun setup-tide-mode-ts ()
  (interactive)
  (add-node-modules-path)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (web-mode)
  (tide-setup)
  (flycheck-add-mode 'javascript-tide 'web-mode)
  (flycheck-add-next-checker 'javascript-tide 'javascript-eslint)
  (flycheck-mode)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode)
  (tide-hl-identifier-mode)
  (company-mode)
  (prettier-js-mode))

(use-package typescript-mode
  :mode (("\\.ts\\'" . typescript-mode)
         ("\\.tsx\\'" . typescript-mode)))

(use-package tide
  :defer t
  :config
  (add-hook 'typescript-mode-hook #'setup-tide-mode-ts))

(provide 'typescript-lang-conf)
