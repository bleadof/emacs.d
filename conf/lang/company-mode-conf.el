(use-package company
  :config
  (progn
    (add-hook 'after-init-hook 'global-company-mode)
    (setq company-tooltip-align-annotations t)))

(use-package company-box
  :after company
  :hook (company-mode . company-box-mode))

(provide 'company-mode-conf)
