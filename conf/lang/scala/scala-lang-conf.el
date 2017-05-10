(req-package scala-mode)
(req-package ensime
  :config (add-hook 'scala-mode-hook 'ensime-scala-mode-hook))

(req-package web-mode
  :mode "\\.scala\\.html\\'"
  :config
  (progn
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-code-indent-offset 2)))

(provide 'scala-lang-conf)
