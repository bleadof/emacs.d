(use-package scss-mode
  :mode "\\.scss\\'"
  :config
  (progn
    (setq indent-tabs-mode nil)
    (setq css-indent-offset 2)))

(provide 'scss-lang-conf)
