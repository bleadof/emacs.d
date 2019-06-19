(req-package projectile
  :bind ("C-c p" . projectile-command-map)
  :config
  (progn
    (setq projectile-indexing-method 'alien)
    (setq projectile-enable-caching t)
    (projectile-global-mode)))

(provide 'projectile-conf)
