(use-package async
  :ensure t)

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-icon t)
  (setq doom-modeline-height 30)
  (setq doom-modeline-time-icon t)
  (setq doom-modeline-vcs-max-length 30)
  (setq doom-modeline-buffer-file-name-style 'truncate-with-project)
  (setq doom-modeline-buffer-encoding nil)
  (setq doom-modeline-window-width-limit 80)
  (setq doom-modeline-buffer-state-icon t)
  (setq doom-modeline-persp-name 2)
  (setq doom-modeline-lsp t)
  (setq doom-modeline-github nil)
  (setq doom-modeline-hud nil)
  (setq doom-modeline-battery t)
  (setq mode-line-percent-position nil)
  (column-number-mode))

(provide 'doom-modeline-conf)
