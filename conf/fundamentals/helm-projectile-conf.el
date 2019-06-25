(use-package helm-projectile
  :after (helm projectile)
  :config
  (progn
    (setq projectile-completion-system 'helm)
    (helm-projectile-on)))

(provide 'helm-projectile-conf)
