(use-package clojure-mode-conf
  :after (cider-conf clj-refactor-conf eldoc popwin rainbow-delimiters company)
  :config
  (progn
    (add-hook 'clojure-mode-hook (lambda () (flycheck-mode 1)))
    (add-hook 'cider-mode-hook 'eldoc-mode)
    (add-hook 'cider-repl-mode-hook 'eldoc-mode)
    (add-hook 'cider-mode-hook 'rainbow-delimiters-mode)
    (push 'company-capf company-backends-cider-mode)
    (push 'company-capf company-backends-cider-repl-mode)))

(provide 'clojure-lang-conf)
