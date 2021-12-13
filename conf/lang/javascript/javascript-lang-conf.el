(use-package web-mode
  :mode (("\\.js\\'" . web-mode)
         ("\\.cjs\\'" . web-mode)
         ("\\.jsx\\'" . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(use-package nodejs-repl
  :hook (javascript-mode . nodejs-repl-mode)
  :bind (("C-x C-e" . nodejs-repl-send-last-expression)
         ("C-c C-j" . nodejs-repl-send-line)
         ("C-c C-r" . nodejs-repl-send-region)
         ("C-c C-l" . nodejs-repl-load-file)
         ("C-c C-z" . nodejs-repl-switch-to-repl)))

(defun setup-tide-mode-js ()
  (interactive)
  (add-node-modules-path)
  (tide-setup)
  (web-mode +1)
  (flycheck-mode +1)
  (flycheck-add-mode 'javascript-tide 'web-mode)
  (flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (company-mode +1)
  (prettier-js-mode +1)
  (tide-hl-identifier-mode +1)
  (tide-mode +1))

(use-package tide
  :defer t
  :config
  (add-hook 'javascript-mode-hook #'setup-tide-mode-js))

(provide 'javascript-lang-conf)
