(use-package typescript-mode
  :after prettier-js
  :config
  (progn
    (add-hook 'typescript-mode-hook #'prettier-js-mode)
    (setq typescript-indent-level 2)))

(defun ts-lang-conf-setup-tide-mode ()
  ;; tide
  (tide-setup)
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; Flycheck
  (flycheck-mode +1)
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (flycheck-select-checker 'javascript-eslint)
  (setq flycheck-check-syntax-automatically '(save mode-enabled)))


(use-package tide
  :after
  (typescript-mode company web-mode)
  :init
  (progn
    (ts-lang-conf-setup-tide-mode)
    (add-hook 'typescript-mode-hook #'tide-mode)
    (add-hook 'before-save-hook 'tide-format-before-save))
  :config
  (progn
    ;; tsx
    (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
    (add-hook 'web-mode-hook
              (lambda ()
                (when (string-equal "tsx" (file-name-extension buffer-file-name))
                  (ts-lang-conf-setup-tide-mode))))))

(provide 'typescript-lang-conf)
