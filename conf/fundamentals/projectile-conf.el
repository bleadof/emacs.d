(use-package projectile
  :ensure t
  :bind ("C-c p" . projectile-command-map)
  :config
  (setq projectile-indexing-method 'alien)
  (setq projectile-enable-caching t))

(provide 'projectile-conf)
