(req-package company
  :config
  (progn
    (add-hook 'after-init-hook 'global-company-mode)
    (setq company-tooltip-align-annotations t)))

(req-package company-box
  :require company
  :hook (company-mode . company-box-mode))

(provide 'company-mode-conf)
