(use-package scss-mode
  :ensure t
  :mode "\\.scss\\'"
  :config
  (setq indent-tabs-mode nil)
  (setq css-indent-offset 2))

(provide 'scss-lang-conf)
