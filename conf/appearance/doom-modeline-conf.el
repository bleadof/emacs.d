(req-package all-the-icons)

(req-package doom-modeline
  :require all-the-icons
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (progn
    (setq doom-modeline-vcs-max-length 30)))

(provide 'doom-modeline-conf)
