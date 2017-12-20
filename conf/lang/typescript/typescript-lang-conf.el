(req-package typescript-mode
  :config
  (progn
    (setq typescript-indent-level 2)))

(req-package tide
  :require
  company-mode eldoc-mode web-mode
  :init
  (progn
    (add-hook 'typescript-mode-hook #'setup-tide-mode)
    (add-hook 'before-save-hook 'tide-format-before-save))
  :config
  (progn
    ;; tide
    (tide-setup)
    (eldoc-mode +1)
    (tide-hl-identifier-mode +1)

    ;; tsx
    (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
    (add-hook 'web-mode-hook
              (lambda ()
                (when (string-equal "tsx" (file-name-extension buffer-file-name))
                  (setup-tide-mode))))))

(provide 'typescript-lang-conf)
