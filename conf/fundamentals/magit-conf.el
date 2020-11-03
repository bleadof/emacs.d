(use-package magit
  :bind ("M-g" . magit-status)
  :config
  (progn
    (setq magit-auto-revert-mode -1)))

(provide 'magit-conf)
