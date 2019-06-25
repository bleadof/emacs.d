(use-package all-the-icons)
  ;;:config (all-the-icons-install-fonts))

(use-package doom-modeline
  :after all-the-icons
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (progn
    (setq doom-modeline-vcs-max-length 30)))

(provide 'doom-modeline-conf)
