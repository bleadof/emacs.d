(req-package magit
  :bind ("M-g" . magit-status)
  :config
  (progn
    (setq magit-last-seen-setup-instructions "1.4.0")
    (req-package rebase-mode)))

(provide 'magit-conf)
