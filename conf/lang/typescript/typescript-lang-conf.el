(use-package web-mode
  :mode ("\\.\\(ts\\|tsx\\)\\'" . web-mode)
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(defun setup-tide-mode-ts ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1)
  (prettier-js-mode +1))

(use-package tide
  :hook (web-mode-hook . setup-tide-mode-ts)
  :after (web-mode company flycheck add-node-modules-path)
  :config
  (add-node-modules-path)
  (flycheck-add-mode 'javascript-tide 'web-mode)
  (flycheck-add-next-checker 'javascript-tide 'javascript-eslint))

(provide 'typescript-lang-conf)
