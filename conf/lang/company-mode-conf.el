(use-package company
  :config
  (progn
    (add-hook 'after-init-hook 'global-company-mode)
    (setq company-tooltip-align-annotations t)))

(use-package company-box
  :requires company-mode
  :hook (company-mode . company-box-mode)
  :init (setq company-box-icons-alist 'company-box-icons-all-the-icons)
  :config
  (progn
    (setq company-box-backends-colors nil)
    (setq company-box-show-single-candidate t)
    (setq company-box-max-candidates 50)
    ))

(provide 'company-mode-conf)
