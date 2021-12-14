(use-package all-the-icons
  :ensure t)
  ;;:config (all-the-icons-install-fonts))

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-vcs-max-length 30))

(provide 'doom-modeline-conf)
