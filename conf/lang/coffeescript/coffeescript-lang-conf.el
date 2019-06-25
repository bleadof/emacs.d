(use-package coffee-mode
  :after highlight-indent-guides
  :mode "\\.coffee\\'"
  :config
  (progn
    (add-hook 'coffee-mode-hook 'highlight-indent-guides-mode)
    (custom-set-variables '(coffee-tab-width 2))
    ;; automatically clean up bad whitespace
    (setq whitespace-action '(auto-cleanup))
    ;; only show bad whitespace
    (setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))))

(provide 'coffeescript-lang-conf)
