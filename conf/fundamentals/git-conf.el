(use-package magit
  :ensure t
  :bind ("M-g" . magit-status)
  :config
  (progn
    (setq magit-auto-revert-mode -1)))

(use-package forge
  :after magit)

(provide 'git-conf)
