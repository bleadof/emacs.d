(use-package web-mode
  :mode ("\\.\\(ts\\|tsx\\)\\'" . web-mode)
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(defun setup-tide-mode ()
  (interactive)
  (when (or (string-equal "tsx" (file-name-extension buffer-file-name))
            (string-equal "ts" (file-name-extension buffer-file-name)))
    (tide-setup)
    (flycheck-mode +1)
    (setq flycheck-check-syntax-automatically '(save mode-enabled))
    (eldoc-mode +1)
    (tide-hl-identifier-mode +1)
    ;; company is an optional dependency. You have to
    ;; install it separately via package-install
    ;; `M-x package-install [ret] company`
    (company-mode +1)
    (prettier-js-mode +1)))

(use-package tide
  :config
  (add-node-modules-path)
  (flycheck-add-mode 'javascript-tide 'web-mode)
  (flycheck-add-next-checker 'javascript-tide 'javascript-eslint)
  (add-hook 'web-mode-hook 'setup-tide-mode))

(provide 'typescript-lang-conf)
