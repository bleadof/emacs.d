(use-package add-node-modules-path
  :ensure t)

(use-package eldoc)

(use-package company
  :ensure t)

(use-package prettier-js
  :ensure t)

(use-package nodejs-repl
  :ensure t
  :hook (javascript-mode . nodejs-repl-mode)
  :bind (:map javascript-mode-map
         ("C-x C-e" . nodejs-repl-send-last-expression)
         ("C-c C-j" . nodejs-repl-send-line)
         ("C-c C-r" . nodejs-repl-send-region)
         ("C-c C-l" . nodejs-repl-load-file)
         ("C-c C-z" . nodejs-repl-switch-to-repl)))

(defun setup-tide-mode-js ()
  (interactive)
  (when (string-match-p (regexp-quote "\.js") (buffer-file-name (current-buffer)))
    (add-node-modules-path)
    (tide-setup)
    (flycheck-mode)
    (flycheck-add-mode 'javascript-tide 'web-mode)
    (flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)
    (setq flycheck-check-syntax-automatically '(save mode-enabled))
    (company-mode)
    (prettier-js-mode)
    (tide-hl-identifier-mode)
    (tide-mode)))

(use-package tide
  :defer t
  :config
  (add-hook 'web-mode-hook #'setup-tide-mode-js))

(use-package web-mode
  :ensure t
  :mode (("\\.js\\'" . web-mode)
         ("\\.cjs\\'" . web-mode)
         ("\\.jsx\\'" . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))


(provide 'javascript-lang-conf)
